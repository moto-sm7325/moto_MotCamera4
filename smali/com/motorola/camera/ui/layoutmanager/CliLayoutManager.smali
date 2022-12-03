.class public Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "CliLayoutManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureBarGuideLine()F
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->getTsbMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    div-float/2addr p0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->getTsbMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result p0

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    :goto_0
    const/high16 v0, 0x42400000    # 48.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public getFilterToggleBarOffset()F
    .locals 0

    const/high16 p0, 0x41400000    # 12.0f

    return p0
.end method

.method public getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42400000    # 48.0f

    return p0
.end method

.method public getIndicatorBarMarginHeight()F
    .locals 0

    const/high16 p0, 0x41c00000    # 24.0f

    return p0
.end method

.method public getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;
    .locals 5

    .line 1
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 3
    :goto_1
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_2

    iget v1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_2

    :cond_2
    iget v1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_2
    if-eqz p0, :cond_3

    .line 4
    iget p0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_3

    :cond_3
    iget p0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_3
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 5
    iget p0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr p0, v1

    .line 6
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3cf5c28f    # 0.03f

    sub-float v2, p0, v0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_4

    div-float v2, v1, p0

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sub-float v0, v1, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_5

    div-float v0, p0, v1

    goto :goto_5

    :cond_5
    move v0, v3

    .line 7
    :goto_5
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, v4}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p2

    if-eqz p2, :cond_6

    div-float v0, p0, v1

    move v2, v3

    .line 8
    :cond_6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget p0, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    .line 10
    invoke-static {p0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result p0

    .line 11
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    invoke-direct {p2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;-><init>()V

    .line 12
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float p0, p0

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iput-object v1, p2, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->rotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 13
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v4

    mul-float/2addr p1, v2

    invoke-direct {p0, v1, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p0, p2, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-object p2
.end method

.method public getTsbMarginHeight()F
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCliNavBarHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v0, p0

    return v0
.end method

.method public getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldTranslateForCutout(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
