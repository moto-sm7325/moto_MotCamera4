.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;


# instance fields
.field public mDisplayDensity:F

.field public mHeightDp:F

.field public mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public mSurfaceDensity:F

.field public mWidthDp:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f06031e

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getColor(I)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureBarGuideLine()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    const v2, 0x3faaaaab

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->shouldAdjustTopMarginForTopInsetInCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    add-float/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result p0

    sub-float/2addr v0, p0

    add-float/2addr v0, v1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->mCaptureBarMargin:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42900000    # 72.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x41900000    # 18.0f

    sub-float/2addr v1, v2

    .line 7
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr p0, v0

    const v0, 0x3f8147ae    # 1.01f

    cmpl-float v0, p0, v0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    invoke-static {p0, v3, v2, v3}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    :cond_2
    cmpg-float v0, p0, v3

    if-gez v0, :cond_3

    sub-float p0, v3, p0

    div-float/2addr p0, v2

    sub-float p0, v3, p0

    :cond_3
    mul-float/2addr v1, p0

    return v1

    .line 8
    :cond_4
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public getCaptureBarHeight()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v2

    mul-float/2addr v2, v0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x42600000    # 56.0f

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    .line 6
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, v4

    return v0

    .line 8
    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, v4

    return v0
.end method

.method public getControlBarGuideline()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    return p0
.end method

.method public getDefaultPreviewAspect()F
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const v0, 0x3faaaaab

    if-eqz p0, :cond_0

    return v0

    .line 3
    :cond_0
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 4
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_PREVIEW_ASPECT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getDualCapturePIPVerticalGuideline()F
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getDualCaptureSplitVerticalGuideline()F
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070111

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    .line 6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070156

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getFilterToggleBarOffset()F
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070314

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x42880000    # 68.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getIndicatorBarAndTopMargin()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F
    .locals 3

    .line 1
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    div-float/2addr v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    return p1
.end method

.method public getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42a00000    # 80.0f

    return p0
.end method

.method public getIndicatorBarMarginHeight()F
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->shouldAdjustTopMarginForTopInsetInCenter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    const/high16 v1, 0x443e0000    # 760.0f

    sub-float/2addr v0, v1

    .line 7
    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v1, 0x44834000    # 1050.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    const/high16 p0, 0x42480000    # 50.0f

    :goto_0
    add-float/2addr v0, p0

    goto :goto_1

    :cond_1
    const/high16 v1, 0x44610000    # 900.0f

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    const/high16 p0, 0x41000000    # 8.0f

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 p0, 0x42200000    # 40.0f

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getModeCarouselY()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    sub-float/2addr v3, p0

    const/high16 p0, 0x41c00000    # 24.0f

    sub-float/2addr v3, p0

    cmpg-float p0, v2, v3

    const/high16 v2, 0x41e00000    # 28.0f

    if-gez p0, :cond_0

    add-float/2addr v1, v2

    return v1

    :cond_0
    add-float/2addr v0, v2

    return v0
.end method

.method public getModeSliderY()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    const/high16 v0, 0x41e00000    # 28.0f

    add-float/2addr p0, v0

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

    int-to-float p2, p0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, p1

    div-float/2addr p2, v1

    .line 6
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3cf5c28f    # 0.03f

    sub-float v2, p2, v0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_4

    div-float v2, v1, p2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sub-float v0, v1, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_5

    div-float/2addr p2, v1

    goto :goto_5

    :cond_5
    move p2, v3

    .line 7
    :goto_5
    new-instance v0, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    invoke-direct {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;-><init>()V

    .line 8
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iput-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->rotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 9
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    int-to-float p1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    mul-float/2addr p1, p2

    int-to-float p0, p0

    div-float/2addr p0, v4

    mul-float/2addr p0, v2

    invoke-direct {v1, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-object v0
.end method

.method public getPreviewScale()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getPreviewScale(Lcom/motorola/camera/PreviewSize;)F
    .locals 1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;I)F

    move-result p0

    return p0
.end method

.method public final getPreviewScale(Lcom/motorola/camera/PreviewSize;I)F
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, v1

    .line 4
    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getPreviewTopMarginSize$enumunboxing$(I)F
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, p1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    return p0
.end method

.method public getShutterButtonCoordinates()Lcom/google/gson/FieldAttributes;
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42100000    # 36.0f

    add-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, p0

    mul-float/2addr p0, v1

    .line 2
    new-instance v1, Lcom/google/gson/FieldAttributes;

    neg-float v2, p0

    add-float v3, v0, p0

    sub-float/2addr v0, p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/google/gson/FieldAttributes;-><init>(FFFF)V

    return-object v1
.end method

.method public getToggleBarGuideLine()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiToggleAlign:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine(Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;)F

    move-result p0

    return p0
.end method

.method public getToggleBarGuideLine(Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;)F
    .locals 3

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    const v2, 0x3faaaaab

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;->PREVIEW_UNDER:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    const/high16 p1, 0x42880000    # 68.0f

    add-float/2addr p0, p1

    return p0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p1, v0, :cond_2

    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v0, 0x443b8000    # 750.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    const/high16 p1, 0x42600000    # 56.0f

    sub-float/2addr p0, p1

    return p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    return p0
.end method

.method public getTrait$enumunboxing$()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTsbMarginHeight()F
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v0, p0

    return v0
.end method

.method public getYOffsetIfNotWideScreen()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 8
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget v3, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iget v4, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v5, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v3

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v4

    const v5, 0x3cf5c28f    # 0.03f

    sub-float v6, v3, v5

    cmpg-float v6, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-gez v6, :cond_0

    div-float v3, v4, v3

    goto :goto_0

    :cond_0
    move v3, v7

    .line 11
    :goto_0
    iget v6, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    .line 12
    iget v8, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 13
    new-instance v9, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v9}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 14
    invoke-virtual {v9, v1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 15
    sget-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v10}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v11, :cond_6

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 17
    iget v6, v9, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    .line 18
    iget-object v11, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 19
    iget v11, v11, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v11, v6

    float-to-int v6, v11

    iput v6, v9, Lcom/motorola/camera/PreviewSize;->height:I

    .line 20
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 21
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 22
    new-instance v11, Lcom/motorola/camera/PreviewSize;

    const/16 v13, 0x10e

    const/16 v14, 0x5a

    if-eq v6, v14, :cond_2

    if-ne v6, v13, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    iget v15, v9, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v15, v9, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_2
    if-eq v6, v14, :cond_4

    if-ne v6, v13, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    iget v6, v9, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_4

    :cond_4
    :goto_3
    iget v6, v9, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_4
    invoke-direct {v11, v15, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 25
    iget v6, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    iget v9, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    div-float v9, v6, v9

    .line 26
    iget v13, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v13, v13

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v11, v11

    div-float/2addr v13, v11

    sub-float v5, v9, v5

    cmpg-float v5, v13, v5

    if-gez v5, :cond_5

    div-float v7, v13, v9

    :cond_5
    mul-float/2addr v6, v7

    .line 27
    :cond_6
    iget v5, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    div-float/2addr v5, v12

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v9

    add-float/2addr v9, v7

    mul-float/2addr v9, v8

    sub-float/2addr v5, v9

    .line 29
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v7, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 31
    :cond_7
    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v7}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_8

    .line 32
    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 33
    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    if-ne v0, v9, :cond_10

    .line 34
    iget v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    goto/16 :goto_7

    .line 35
    :cond_8
    invoke-static {v1, v10}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    const/4 v10, 0x2

    if-eqz v7, :cond_b

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 37
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    if-ne v1, v10, :cond_9

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    mul-float/2addr v0, v8

    add-float/2addr v5, v0

    goto/16 :goto_8

    :cond_9
    if-ne v1, v9, :cond_a

    .line 39
    iget v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    goto/16 :goto_7

    :cond_a
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    .line 40
    invoke-static/range {p0 .. p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureScaleLayout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    mul-float/2addr v0, v8

    div-float/2addr v0, v12

    sub-float/2addr v5, v0

    goto/16 :goto_8

    .line 42
    :cond_b
    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v7}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 43
    invoke-static {v2, v7}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableDebugPreviewSize()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_c

    .line 45
    iget v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr v0, v1

    goto :goto_5

    .line 46
    :cond_c
    iget v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    :goto_5
    neg-float v5, v0

    goto :goto_8

    .line 47
    :cond_d
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 49
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 50
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 51
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 52
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v1

    goto :goto_6

    .line 53
    :cond_e
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 54
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v1

    .line 55
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 56
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v10

    sub-int/2addr v1, v2

    .line 57
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v8

    .line 58
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 59
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v12

    add-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v0, v12

    sub-float/2addr v2, v0

    add-float/2addr v5, v2

    goto :goto_8

    .line 60
    :cond_f
    invoke-static {v4}, Lcom/motorola/camera/utility/SizeUtility;->isFullSizeAspectRatio(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61
    iget v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_7
    int-to-float v0, v0

    sub-float/2addr v0, v6

    div-float v5, v0, v12

    :cond_10
    :goto_8
    return v5
.end method

.method public getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public isLayout21_9()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewCrop()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isOneNavBarEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewUnder()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiToggleAlign:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;->PREVIEW_UNDER:Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldAdjustTopMarginForTopInsetInCenter()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_1

    .line 2
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mIsTopInsetInCenter:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldTranslateForCutout(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    .line 4
    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "w:"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " heightDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " widthDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v2, 0x44834000    # 1050.0f

    cmpl-float v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    const-string/jumbo v1, "small"

    goto :goto_3

    :cond_1
    const/high16 v3, 0x44610000    # 900.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    if-eqz v2, :cond_3

    const-string v1, "default"

    goto :goto_3

    :cond_3
    const/high16 v2, 0x44480000    # 800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    const-string v1, "larger"

    goto :goto_3

    :cond_5
    const-string v1, "large"

    .line 3
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " indicatorBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " notch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " previewTop43:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    .line 7
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " previewTop169:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " captureBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " navBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " oneNavBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget-object v2, v1, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    if-nez v2, :cond_9

    .line 14
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 15
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isOneNavBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 16
    iget-boolean v2, v1, Lcom/motorola/camera/CameraApp;->mShouldUseMotorolaSettings:Z

    if-eqz v2, :cond_7

    .line 17
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 18
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isOneNavBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 19
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "dimen"

    const-string v6, "android"

    const-string/jumbo v7, "zz_moto_softonenav_navbar_height"

    .line 20
    invoke-virtual {v3, v7, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    .line 21
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Point;->set(II)V

    :cond_6
    const-string/jumbo v5, "zz_moto_softonenav_navbar_width"

    .line 22
    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_8

    .line 23
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_4

    .line 24
    :cond_7
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->defaultNavBarSize()Landroid/graphics/Point;

    move-result-object v2

    .line 25
    :cond_8
    :goto_4
    iput-object v2, v1, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    .line 26
    :cond_9
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mOneNavBarSize:Landroid/graphics/Point;

    .line 27
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " tsbMargin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " surfaceDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " displayDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSurface(Lcom/motorola/camera/PreviewSize;F)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->clearScreenBoundElementsSizes()V

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 4
    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    move-result-object v1

    array-length v2, v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v6

    .line 6
    iget v7, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v8, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 7
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v3

    if-gez v7, :cond_0

    move-object v0, v5

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 9
    iget v0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    .line 10
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    .line 11
    iput p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    return-void
.end method
