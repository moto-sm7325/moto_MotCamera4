.class public Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "PanoMiniPreviewGuideTexture.java"


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mCapturing:Z

.field public mComponent:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

.field public mDismissRunnable:Ljava/lang/Runnable;

.field public mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mHandler:Landroid/os/Handler;

.field public mOrientation:I

.field public mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

.field public mShowFadeAnim:Z

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    .line 3
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v7, 0x0

    .line 5
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    .line 6
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    .line 7
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-direct {v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    .line 11
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 12
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v3, ""

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 13
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v2, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 14
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setAlpha(F)V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 19
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->getDrawList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 20
    :cond_0
    monitor-exit v1

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v2

    .line 22
    monitor-enter v1

    .line 23
    :try_start_1
    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    .line 24
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->getDrawList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 25
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    iput v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mLineWidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :cond_1
    monitor-exit v1

    .line 29
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 30
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 31
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    return-void

    :catchall_1
    move-exception v0

    .line 32
    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    .line 33
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getPreviewDisplayRect()Lcom/google/gson/FieldAttributes;
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-object v2, v1, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    move v3, v1

    .line 10
    :cond_3
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    invoke-direct {v1, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 12
    sget v2, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 13
    new-instance v2, Lcom/google/gson/FieldAttributes;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    div-float v7, v6, v4

    sub-float/2addr v5, v7

    add-float/2addr v5, p0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    int-to-float v3, v3

    add-float v7, v1, v3

    iget v8, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float v8, v1, v4

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v4

    sub-float/2addr v8, v6

    sub-float/2addr v8, p0

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float p0, v1, p0

    sub-float/2addr p0, v3

    div-float/2addr v1, v4

    sub-float/2addr p0, v1

    invoke-direct {v2, v5, v7, v8, p0}, Lcom/google/gson/FieldAttributes;-><init>(FFFF)V

    return-object v2
.end method

.method public final getThumbnailHeight()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    :goto_1
    return p0
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public loadTexture()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x7f000000

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 5
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 11
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 14
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f120111

    .line 15
    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, v3, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 26
    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 27
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 5
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->onDraw([F[F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 7
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 9
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPreDraw([F[F)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final placeGuideIdleText()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 3
    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 4
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 6
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v6

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    const/high16 v5, 0x42a00000    # 80.0f

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 9
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    sub-int/2addr v4, v5

    .line 10
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 12
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float/2addr v5, v4

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v4

    const/high16 v6, 0x43180000    # 152.0f

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 15
    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v7

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    .line 16
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v6, :cond_4

    const/16 v4, 0x5a

    if-eq v6, v4, :cond_3

    const/16 v4, 0xb4

    if-eq v6, v4, :cond_2

    const/16 v2, 0x10e

    if-eq v6, v2, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v2

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    neg-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    sub-float/2addr v0, v5

    invoke-virtual {p0, v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v2

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    div-float/2addr v0, v3

    sub-float/2addr v0, v5

    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    add-float/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    int-to-float v3, p1

    invoke-virtual {v0, v3, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 5
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 7
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    :cond_0
    return-void

    .line 13
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 14
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    int-to-float v3, p1

    invoke-virtual {v0, v3, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 17
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v3, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v3, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    .line 25
    iput p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public setGuideIdleTextVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final stopCapture()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    return-void
.end method

.method public update(IILandroid/graphics/Bitmap;FFFFFFZZFFZF)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p12

    move/from16 v5, p14

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, -0x2

    const/4 v9, 0x3

    if-eq v1, v8, :cond_5

    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    const v8, 0x7f120115

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v9, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v5, :cond_1

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 3
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v10, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f120114

    .line 7
    invoke-virtual {v8, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v1, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 12
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f120113

    .line 13
    invoke-virtual {v8, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 17
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {v10, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    return-void

    .line 24
    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    sub-float v1, v1, p13

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    if-eq v2, v6, :cond_9

    if-nez v2, :cond_8

    goto :goto_2

    .line 25
    :cond_8
    sget v8, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    goto :goto_3

    .line 26
    :cond_9
    :goto_2
    sget v8, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    const/high16 v10, 0x437a0000    # 250.0f

    .line 27
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 28
    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float/2addr v11, v10

    sub-float/2addr v8, v11

    :goto_3
    add-float v8, p15, v8

    .line 29
    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    .line 30
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    .line 31
    :cond_a
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v10, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 32
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getPreviewDisplayRect()Lcom/google/gson/FieldAttributes;

    move-result-object v12

    iget-object v12, v12, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    invoke-virtual {v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setRect(Landroid/graphics/RectF;)V

    .line 33
    :goto_4
    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v12, 0x40800000    # 4.0f

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    goto :goto_5

    :cond_b
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    const/high16 v13, 0x42340000    # 45.0f

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 34
    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v14

    mul-float/2addr v14, v13

    sub-float/2addr v10, v14

    :goto_5
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40400000    # 3.0f

    const/4 v15, 0x0

    if-eqz v2, :cond_1e

    if-eq v2, v6, :cond_18

    const v16, 0x3f0ccccd    # 0.55f

    if-eq v2, v7, :cond_12

    if-eq v2, v9, :cond_c

    goto/16 :goto_c

    :cond_c
    if-eqz p11, :cond_d

    goto/16 :goto_d

    .line 35
    :cond_d
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 36
    iget v9, v12, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq v9, v7, :cond_e

    .line 37
    iput v7, v12, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    .line 38
    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_e
    if-nez p10, :cond_f

    .line 39
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v12, v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    add-float/2addr v12, v1

    mul-float v1, p13, p9

    add-float/2addr v1, v12

    add-float/2addr v1, v8

    invoke-virtual {v9, v10, v1, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_6

    .line 40
    :cond_f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1, v10, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 41
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v1

    cmpl-float v1, v1, p13

    if-eqz v1, :cond_11

    .line 42
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 43
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    div-float v9, v4, v5

    div-float v12, p13, v5

    invoke-virtual {v1, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 44
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v1, :cond_10

    .line 45
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 46
    sget v12, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    mul-float v12, v12, v16

    .line 47
    invoke-virtual {v1, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    goto :goto_7

    .line 48
    :cond_10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 49
    sget v12, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    .line 50
    invoke-virtual {v1, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 51
    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v10, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_c

    :cond_12
    if-eqz p11, :cond_13

    goto/16 :goto_d

    .line 52
    :cond_13
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 53
    iget v12, v9, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq v12, v7, :cond_14

    .line 54
    iput v7, v9, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    .line 55
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_14
    if-nez p10, :cond_15

    .line 56
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    sub-float/2addr v12, v1

    sub-float v1, v13, p9

    mul-float v1, v1, p13

    sub-float/2addr v12, v1

    add-float/2addr v12, v8

    invoke-virtual {v9, v10, v12, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_8

    .line 57
    :cond_15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1, v10, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 58
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v1

    cmpl-float v1, v1, p13

    if-eqz v1, :cond_17

    .line 59
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 60
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    div-float v9, v4, v5

    div-float v12, p13, v5

    invoke-virtual {v1, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 61
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v1, :cond_16

    .line 62
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 63
    sget v12, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    mul-float v12, v12, v16

    .line 64
    invoke-virtual {v1, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    goto :goto_9

    .line 65
    :cond_16
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 66
    sget v12, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v12, v12

    div-float/2addr v12, v5

    .line 67
    invoke-virtual {v1, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 68
    :cond_17
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v10, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_c

    :cond_18
    if-eqz p11, :cond_19

    goto/16 :goto_d

    .line 69
    :cond_19
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v1, :cond_1a

    div-float v8, p15, v14

    .line 70
    :cond_1a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 71
    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq v9, v6, :cond_1b

    .line 72
    iput v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    .line 73
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_1b
    if-nez p10, :cond_1c

    .line 74
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    move/from16 v9, p5

    neg-float v9, v9

    invoke-virtual {v1, v9, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_a

    .line 75
    :cond_1c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1, v15, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 76
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v1

    cmpl-float v1, v1, p13

    if-eqz v1, :cond_1d

    .line 77
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 78
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    div-float v9, p13, v5

    .line 79
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v10, v4, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 80
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    div-float v10, v4, v5

    invoke-virtual {v1, v10, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 81
    :cond_1d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v15, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_c

    :cond_1e
    if-eqz p11, :cond_1f

    goto/16 :goto_d

    .line 82
    :cond_1f
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v1, :cond_20

    div-float v8, p15, v14

    .line 83
    :cond_20
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 84
    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq v9, v6, :cond_21

    .line 85
    iput v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    .line 86
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_21
    if-nez p10, :cond_22

    .line 87
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    move/from16 v9, p4

    neg-float v9, v9

    invoke-virtual {v1, v9, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_b

    .line 88
    :cond_22
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1, v15, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 89
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v1

    cmpl-float v1, v1, p13

    if-eqz v1, :cond_23

    .line 90
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 91
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    div-float v9, p13, v5

    .line 92
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v10, v4, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 93
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    div-float v10, v4, v5

    invoke-virtual {v1, v10, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 94
    :cond_23
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v15, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_c
    if-eqz v3, :cond_24

    .line 95
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1, v3, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 96
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    if-nez v1, :cond_24

    .line 97
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 98
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture$1;

    invoke-direct {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;)V

    const/16 v22, 0x2

    const-wide/16 v18, 0xc8

    const/high16 v20, 0x3f000000    # 0.5f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 v3, 0x3

    new-array v8, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 99
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    aput-object v3, v8, v11

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    aput-object v3, v8, v6

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    aput-object v3, v8, v7

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 100
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 101
    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v3, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 103
    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    :cond_24
    :goto_d
    const/16 v1, 0x10e

    if-eqz v2, :cond_2e

    if-eq v2, v6, :cond_2b

    if-eq v2, v7, :cond_28

    const/4 v3, 0x3

    if-eq v2, v3, :cond_25

    goto/16 :goto_16

    .line 104
    :cond_25
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v3, :cond_27

    if-ne v3, v1, :cond_26

    goto :goto_e

    :cond_26
    sub-float v3, v13, p9

    goto :goto_f

    :cond_27
    :goto_e
    move/from16 v3, p9

    :goto_f
    mul-float v3, v3, p13

    .line 105
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpl-float v3, v4, p13

    if-ltz v3, :cond_31

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    goto :goto_16

    .line 107
    :cond_28
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v3, :cond_2a

    if-ne v3, v1, :cond_29

    goto :goto_10

    :cond_29
    move/from16 v3, p9

    goto :goto_11

    :cond_2a
    :goto_10
    sub-float v3, v13, p9

    :goto_11
    mul-float v3, v3, p13

    .line 108
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    cmpl-float v3, v4, p13

    if-ltz v3, :cond_31

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    goto :goto_16

    .line 110
    :cond_2b
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v3, :cond_2d

    if-ne v3, v1, :cond_2c

    goto :goto_12

    :cond_2c
    sub-float v3, v13, p8

    goto :goto_13

    :cond_2d
    :goto_12
    move/from16 v3, p8

    :goto_13
    mul-float/2addr v3, v4

    .line 111
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    div-float/2addr v8, v5

    add-float/2addr v8, v3

    cmpl-float v3, v8, v4

    if-ltz v3, :cond_31

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    goto :goto_16

    .line 113
    :cond_2e
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v3, :cond_30

    if-ne v3, v1, :cond_2f

    goto :goto_14

    :cond_2f
    move/from16 v3, p8

    goto :goto_15

    :cond_30
    :goto_14
    sub-float v3, v13, p8

    :goto_15
    mul-float/2addr v3, v4

    .line 114
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    div-float/2addr v8, v5

    add-float/2addr v8, v3

    cmpl-float v3, v8, v4

    if-ltz v3, :cond_31

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    .line 116
    :cond_31
    :goto_16
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v3, :cond_32

    .line 117
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v4

    .line 118
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 119
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v8

    mul-float/2addr v3, v14

    sub-float/2addr v2, v3

    .line 120
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v15, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 121
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 122
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto/16 :goto_19

    .line 123
    :cond_32
    sget v3, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    add-float v3, p15, v3

    .line 124
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v10

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v10, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v10

    const/high16 v11, 0x43180000    # 152.0f

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 125
    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    mul-float/2addr v12, v11

    sub-float/2addr v10, v12

    .line 126
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v11

    .line 127
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledWidth()F

    move-result v12

    const/high16 v13, 0x43340000    # 180.0f

    .line 128
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v14

    mul-float/2addr v14, v13

    .line 129
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v13

    mul-float/2addr v13, v8

    .line 130
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v8

    mul-float/2addr v8, v4

    const/high16 v4, 0x430c0000    # 140.0f

    .line 131
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v7

    mul-float/2addr v7, v4

    .line 132
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    const/high16 v16, 0x40800000    # 4.0f

    div-float v4, v4, v16

    const/16 v15, 0xb4

    const/16 v9, 0x5a

    if-eqz v2, :cond_39

    if-ne v2, v6, :cond_33

    goto/16 :goto_18

    .line 133
    :cond_33
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v6, :cond_37

    if-eq v6, v9, :cond_36

    if-eq v6, v15, :cond_35

    if-eq v6, v1, :cond_34

    goto/16 :goto_19

    .line 134
    :cond_34
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    neg-float v2, v11

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 135
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 136
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto/16 :goto_19

    .line 137
    :cond_35
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sub-float/2addr v3, v14

    div-float/2addr v11, v5

    add-float/2addr v11, v3

    const/4 v2, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v11, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 138
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 139
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto/16 :goto_19

    :cond_36
    const/high16 v6, -0x40800000    # -1.0f

    .line 140
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    div-float/2addr v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {v1, v11, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 141
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 142
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto/16 :goto_19

    .line 143
    :cond_37
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 144
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_38

    .line 146
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v2, v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_17

    :cond_38
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 147
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    add-float/2addr v3, v1

    invoke-virtual {v2, v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 148
    :goto_17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 149
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto/16 :goto_19

    .line 150
    :cond_39
    :goto_18
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v2, :cond_3f

    if-eq v2, v9, :cond_3d

    if-eq v2, v15, :cond_3c

    if-eq v2, v1, :cond_3a

    goto :goto_19

    :cond_3a
    cmpl-float v1, v12, v7

    if-lez v1, :cond_3b

    move v12, v7

    .line 151
    :cond_3b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    neg-float v2, v12

    neg-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v2, v3

    add-float/2addr v2, v13

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 152
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 153
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto :goto_19

    .line 154
    :cond_3c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sub-float/2addr v3, v14

    div-float/2addr v11, v5

    add-float/2addr v11, v3

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v11, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 155
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 156
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto :goto_19

    :cond_3d
    cmpl-float v1, v12, v7

    if-lez v1, :cond_3e

    move v12, v7

    .line 157
    :cond_3e
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    div-float/2addr v12, v5

    add-float/2addr v12, v3

    add-float/2addr v12, v13

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 158
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 159
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    goto :goto_19

    :cond_3f
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 160
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v2, v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 161
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 162
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    :goto_19
    return-void
.end method

.method public updatePanoGuideIdleText(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f120112

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f120111

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateTranslation(ZFFFLcom/motorola/camera/PreviewSize;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    if-nez p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    if-eqz p6, :cond_1

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    :cond_1
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 6
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    .line 8
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz p3, :cond_3

    .line 9
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    if-nez p3, :cond_2

    .line 10
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    :cond_2
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 p4, 0x41400000    # 12.0f

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    .line 12
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    goto :goto_0

    .line 13
    :cond_3
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    if-nez p3, :cond_5

    .line 14
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 15
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    const/4 p4, 0x3

    .line 16
    iget p5, p3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq p5, p4, :cond_4

    .line 17
    iput p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    .line 18
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    .line 19
    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getPreviewDisplayRect()Lcom/google/gson/FieldAttributes;

    move-result-object p4

    iget-object p4, p4, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setRect(Landroid/graphics/RectF;)V

    .line 20
    :cond_5
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 p4, 0x41700000    # 15.0f

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    .line 21
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    .line 22
    :goto_0
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    :goto_1
    if-eqz p1, :cond_6

    .line 23
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    :cond_6
    return-void
.end method
