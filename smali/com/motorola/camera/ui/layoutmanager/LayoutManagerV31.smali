.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "LayoutManagerV31.java"


# instance fields
.field public mAvailableHeight:F

.field public final mBaseBottomMargin:I

.field public final mBaseComponentsMargin:I

.field public mBottomMargin:I

.field public mComponentsMargin:I

.field public mLayoutHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0020

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseBottomMargin:I

    const v0, 0x7f0b0021

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseComponentsMargin:I

    .line 5
    instance-of p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 7
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    .line 8
    iget-object p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 9
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    .line 10
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    .line 11
    iget p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateLayoutHeight()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    mul-float/2addr v1, v0

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    add-int/lit8 v0, v0, 0x48

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x38

    add-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, v1

    const/high16 v0, 0x42a00000    # 80.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public computeLayout()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v1

    int-to-float v1, v1

    .line 7
    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mAvailableHeight:F

    .line 9
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseBottomMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    .line 10
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBaseComponentsMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->calculateLayoutHeight()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    .line 12
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mAvailableHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    if-lez v1, :cond_0

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 13
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    int-to-float v0, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 14
    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->calculateLayoutHeight()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBottomMargin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    return p0
.end method

.method public getCaptureBarGuideLine()F
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getBottomMargin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    const/high16 p0, 0x42100000    # 36.0f

    sub-float/2addr v1, p0

    return v1
.end method

.method public getComponentsMargin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    return p0
.end method

.method public getIndicatorBarMarginHeight()F
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    sub-float/2addr v1, p0

    return v1
.end method

.method public final getModeCarouselFromTop()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getCaptureBarGuideLine()F

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x41e00000    # 28.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public getModeCarouselY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getModeSliderY()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselY()F

    move-result p0

    return p0
.end method

.method public getToggleBarGuideLine(Lcom/motorola/camera/ui/layoutmanager/ToggleAlign;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p1

    const/high16 v0, 0x41e00000    # 28.0f

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LayoutManagerV31{mBottomMargin="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComponentsMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mLayoutHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailableHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mAvailableHeight:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSurface(Lcom/motorola/camera/PreviewSize;F)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Lcom/motorola/camera/PreviewSize;F)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout()V

    return-void
.end method
