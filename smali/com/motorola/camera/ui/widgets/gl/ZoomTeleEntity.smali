.class public Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "ZoomTeleEntity.java"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    return-void
.end method


# virtual methods
.method public final isBackTeleEnabled()Z
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

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

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

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 8
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    if-eqz p0, :cond_4

    .line 11
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-eq v3, p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 12
    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v0
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

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;->isBackTeleEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    :goto_1
    return-void
.end method

.method public setupZoomConfig()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    :cond_0
    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    .line 13
    aget v1, v1, v3

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    goto :goto_2

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    invoke-static {v2, v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(ZLcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 16
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 17
    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 18
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;->isBackTeleEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 22
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 23
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitZoomByVideoSize()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    .line 29
    iget-object v5, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v6, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 30
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 31
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_7
    move v2, v3

    .line 33
    :cond_8
    :goto_3
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    :cond_9
    return-void
.end method
