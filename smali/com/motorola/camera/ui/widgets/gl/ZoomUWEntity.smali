.class public Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "ZoomUWEntity.java"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    return-void
.end method


# virtual methods
.method public final isBackUWEnabled()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    if-eqz p0, :cond_4

    .line 10
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v3, p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 11
    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public final isFrontUWEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 2
    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionSupportedByUltraWide()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setVideoRecording(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    goto :goto_2

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;->isBackUWEnabled()Z

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;->isFrontUWEnabled()Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    :goto_2
    return-void
.end method

.method public setupZoomConfig()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 11
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 12
    aget v1, v3, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 13
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v3, :cond_2

    const v0, 0x3c23d70a

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomSwitchDownInterval()F

    move-result v0

    .line 15
    :goto_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    aget v3, v3, v4

    sub-float/2addr v3, v0

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {v4, v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(ZLcom/motorola/camera/settings/CameraType;)F

    move-result v3

    .line 17
    :goto_3
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 18
    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 19
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;->isBackUWEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    move v2, v4

    goto :goto_5

    .line 22
    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 23
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 24
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v5}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    if-eqz v1, :cond_8

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitZoomByVideoSize()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 27
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 28
    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    .line 30
    iget-object v5, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v6, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 31
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 32
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 34
    :cond_8
    :goto_5
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    goto :goto_6

    .line 35
    :cond_9
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 38
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 40
    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 41
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;->isFrontUWEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    .line 43
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    :goto_6
    return-void
.end method
