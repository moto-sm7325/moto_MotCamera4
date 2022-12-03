.class public Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;
.source "ZoomComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioZoomEnabled:Z

.field public mWasBeautySliderVisible:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mWasBeautySliderVisible:Z

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p2, "audio"

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackSwitchBundle(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const-string v1, "BANNER_SWITCH"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    const-string v0, "CAMERA_TYPE"

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "ORIGIN_CAMERA_TYPE"

    .line 5
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "IS_MANUAL_JUMP"

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public getCameraType()Lcom/motorola/camera/settings/CameraType;
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public getDragBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    const-string v2, "CAMERA_TYPE"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    const-string v2, "VALUE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragOrientation:I

    const-string v2, "ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TYPE"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->getUnitSegWidth()I

    move-result v1

    const-string v3, "ZOOM_SEG_UNIT"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    const-string v1, "VIDEO_RECORDING"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ENABLE"

    .line 9
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "SAME_ID"

    .line 10
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZoomComponent"

    return-object p0
.end method

.method public isVisible()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onVideoStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onZoomChanged(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;FZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eq p2, p1, :cond_0

    .line 4
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getPhysicalType(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 7
    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 10
    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->getBlurLevel(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onZoomCompleted()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->clearZslCaptureMap()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_ZOOM_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void
.end method

.method public onZoomStateChange(Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;FFLcom/motorola/camera/settings/CameraType;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;)V

    .line 3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result p1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionEnabled()Z

    move-result p2

    .line 6
    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    int-to-float p3, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(ZZF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAudioZoomFactor(ZZF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_zoom_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "zoom_factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p3, p3, v1

    if-ltz p3, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    if-nez p3, :cond_0

    const/4 p3, 0x3

    if-eq v0, p3, :cond_0

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    .line 9
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string p1, "camera_audio_record_nr="

    .line 10
    invoke-static {p1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v3, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v4, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getMaxUiRatio()I

    move-result v3

    .line 6
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveUnLimitedZoomEntityMap()Ljava/util/Map;

    move-result-object v5

    .line 7
    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v7, 0x27

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-ne v6, v9, :cond_4

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v9, :cond_2

    if-eq p1, v8, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1, v11, v11, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1, v11, v2, v11, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1, v0, v11, v11, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v0, v9, [Landroid/util/Range;

    new-instance v1, Landroid/util/Range;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v1, v0, v10

    invoke-virtual {p1, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto/16 :goto_1

    .line 14
    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v11

    .line 15
    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    .line 17
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v8, :cond_6

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v1, v8, [Landroid/util/Range;

    new-instance v3, Landroid/util/Range;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v3, v1, v10

    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v3, v1, v9

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v4, v1, v9

    .line 20
    aget v1, v1, v8

    .line 21
    invoke-virtual {p0, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    .line 22
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v4, v4, v8

    .line 23
    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result p1

    .line 24
    invoke-virtual {p0, v4, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result p1

    .line 25
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v3, v3, [Landroid/util/Range;

    new-instance v5, Landroid/util/Range;

    .line 26
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v5, v3, v10

    new-instance v5, Landroid/util/Range;

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v5, v3, v9

    new-instance v2, Landroid/util/Range;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v2, v3, v8

    .line 29
    invoke-virtual {v4, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    .line 30
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)V

    .line 34
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setZoomCompStyle(Z)V

    return-void
.end method

.method public setupZoomTextures()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomTexture(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 6
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setVisibility(Z)V

    :cond_3
    return-void
.end method

.method public final showAudioZoomToast()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mReadyShowToast:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_7

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_7

    .line 6
    :cond_0
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v8, 0x7f1204b0

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 8
    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v9

    const/16 v10, 0x7d0

    .line 9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v2, 0x3

    if-eqz v9, :cond_5

    if-eq v9, v2, :cond_4

    const/4 v2, 0x4

    if-eq v9, v2, :cond_2

    const/4 v2, 0x5

    if-eq v9, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xbb8

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move-object v5, v10

    move v10, v2

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v10, 0x2

    goto :goto_1

    :cond_5
    move-object v5, v10

    :goto_0
    move v10, v4

    :goto_1
    if-nez v5, :cond_6

    const/16 v2, 0xfa0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 14
    :cond_6
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v9, 0x1

    .line 15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    move-object v4, v2

    move v5, v9

    move/from16 v9, v16

    move/from16 v18, v11

    move-object/from16 v16, v17

    invoke-direct/range {v4 .. v16}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 16
    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v3, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    move/from16 v1, v18

    .line 19
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mReadyShowToast:Z

    :cond_7
    return-void
.end method

.method public showLabelMode()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackWideCamera()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showSwitchToast()V
    .locals 15

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 3
    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v1

    const/16 v2, 0x7d0

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xbb8

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Text Description is empty for Setting Confirmation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move-object v2, v3

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    const/16 v1, 0xfa0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9
    :cond_5
    new-instance v14, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v13, 0x0

    const/4 v4, 0x0

    const v5, 0x7f1204c3

    const/4 v11, 0x0

    move-object v1, v14

    move v2, v3

    move v3, v8

    invoke-direct/range {v1 .. v13}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 11
    sput-object v14, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 12
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0, v14}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enteringZoomState(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne p1, v5, :cond_3c

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleTexVisibleType$enumunboxing$(I)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 7
    invoke-virtual {p0, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    goto/16 :goto_c

    .line 8
    :cond_1
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne p1, v5, :cond_2

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleTexVisibleType$enumunboxing$(I)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->showSegmentLabel(ZZ)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->exitingZoomState()V

    goto/16 :goto_c

    .line 14
    :cond_3
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x3

    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v4, v8, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v4, v6

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v4, v7

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 18
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 19
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "BANNER_SWITCH"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    .line 22
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-ne p1, v0, :cond_5

    .line 23
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->ENTER_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-ne p1, v0, :cond_6

    .line 25
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 26
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_c

    .line 27
    :cond_7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_16

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    move-object v2, v4

    goto :goto_1

    :cond_8
    const-string v2, "USE_CASE"

    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    :goto_1
    if-eqz p1, :cond_9

    const-string v3, "IS_MANUAL_JUMP"

    .line 31
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    move v7, v6

    :goto_2
    if-eqz p1, :cond_a

    const-string v3, "ORIGIN_CAMERA_TYPE"

    .line 32
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    goto :goto_3

    :cond_a
    move-object v3, v4

    :goto_3
    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    const-string v4, "ZOOM_SEGMENT"

    .line 33
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    :goto_4
    if-eqz p1, :cond_c

    const-string v5, "PREVIOUS_ZOOM"

    .line 34
    invoke-virtual {p1, v5, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_5

    :cond_c
    move p1, v9

    :goto_5
    if-eqz v4, :cond_d

    .line 35
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 36
    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v4

    .line 37
    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v2, v5, :cond_13

    if-eqz v7, :cond_11

    .line 38
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, p1, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isSegmentSlider()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    if-eq p1, v1, :cond_e

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    if-ne p1, v1, :cond_f

    :cond_e
    if-eqz v4, :cond_10

    .line 39
    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 40
    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    div-float/2addr v10, p1

    .line 41
    invoke-static {v0, v10}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_c

    .line 42
    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 43
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 44
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result p1

    div-float/2addr v10, p1

    .line 45
    invoke-static {v0, v10}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_c

    .line 46
    :cond_12
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p1, :cond_3c

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, p1, :cond_3c

    .line 47
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result p1

    div-float/2addr v10, p1

    .line 48
    invoke-static {v0, v10}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_c

    :cond_13
    if-ne v2, v1, :cond_15

    .line 49
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 50
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(ZLcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_15

    cmpl-float v1, p1, v9

    if-lez v1, :cond_15

    .line 51
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    .line 52
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    div-float v3, v10, p1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_14

    cmpg-float v1, v3, v2

    if-gtz v1, :cond_14

    .line 53
    invoke-static {v0, p1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_c

    .line 54
    :cond_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 55
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 56
    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManualUw(F)F

    move-result p1

    div-float/2addr v10, p1

    .line 57
    invoke-static {v0, v10}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_c

    .line 58
    :cond_15
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v2, p1, :cond_3c

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 60
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 61
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v1, :cond_3c

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget p1, p1, v6

    div-float/2addr v10, p1

    .line 63
    invoke-static {v0, v10}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_c

    .line 64
    :cond_16
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 65
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 66
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 67
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleProSliderListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 68
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 69
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 70
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 71
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 72
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto/16 :goto_c

    .line 73
    :cond_17
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_20

    .line 74
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_18

    monitor-exit p0

    return-void

    .line 75
    :cond_18
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v7, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 76
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->addListener(Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;)V

    const/4 p1, 0x7

    new-array p1, p1, [F

    aput v9, p1, v6

    aput v10, p1, v7

    aput v9, p1, v5

    aput v9, p1, v8

    const/4 v0, 0x4

    aput v9, p1, v0

    const/4 v1, 0x5

    aput v9, p1, v1

    const/4 v3, 0x6

    aput v9, p1, v3

    .line 77
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 80
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aput v9, p1, v8

    .line 81
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasWideSegment()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 82
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v4, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v4}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v4

    aput v4, p1, v0

    .line 83
    :cond_19
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasStandardSegment()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 84
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    .line 85
    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v0

    aput v0, p1, v1

    .line 86
    :cond_1a
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasCloseUpSegment()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 87
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    .line 88
    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v0

    aput v0, p1, v3

    goto :goto_6

    .line 89
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 90
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingSegments()[F

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v1, p1

    invoke-static {p1, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_1c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 93
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aput v10, p1, v8

    goto :goto_6

    .line 94
    :cond_1d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 95
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aput v10, p1, v6

    .line 96
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSelfieFovSwitchValue()F

    move-result v0

    aput v0, p1, v7

    .line 97
    :cond_1e
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 98
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setupZoomModel()V

    .line 100
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 102
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->resetActiveSegment()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    .line 104
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v1

    if-eqz v1, :cond_1f

    int-to-float v0, v0

    .line 105
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMaxX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 106
    :cond_1f
    invoke-virtual {p0, v0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateZoomIgnoreVisible(IZLcom/motorola/camera/settings/CameraType;)V

    goto/16 :goto_c

    .line 107
    :cond_20
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 108
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-eqz p1, :cond_3c

    .line 109
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 111
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 112
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 113
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showLabelMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 114
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto/16 :goto_c

    .line 115
    :cond_21
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 116
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 117
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 118
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 119
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 120
    :cond_22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->showHDR10Banner()V

    .line 121
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showAudioZoomToast()V

    .line 122
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz p1, :cond_3c

    .line 123
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, p1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendBackSwitchEvent(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;)V

    .line 124
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    goto/16 :goto_c

    .line 125
    :cond_23
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 126
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 127
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 128
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto/16 :goto_c

    .line 129
    :cond_24
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 130
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setClickable(Z)V

    .line 131
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    goto/16 :goto_c

    .line 132
    :cond_25
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 133
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 134
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 135
    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    goto/16 :goto_b

    .line 136
    :cond_26
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 137
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 138
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 139
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 140
    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 141
    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 142
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 143
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_a

    .line 144
    :cond_27
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 145
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v6, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 146
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v6, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 147
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleProSliderListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_PRO_MODE_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v6, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 148
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v6, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 149
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 150
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 151
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    .line 152
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 153
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 154
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    const/16 p1, 0x64

    .line 155
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    .line 156
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 157
    invoke-virtual {p0, v6, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(ZZF)V

    goto/16 :goto_c

    .line 158
    :cond_28
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 159
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 160
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 161
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 162
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 163
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_c

    .line 164
    :cond_29
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 165
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 166
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 167
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 168
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 169
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 170
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 171
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 172
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 173
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 174
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 175
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 176
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 177
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_2a
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 178
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 179
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto/16 :goto_9

    .line 180
    :cond_2b
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 181
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_c

    .line 182
    :cond_2c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 183
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 184
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 185
    :cond_2d
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    .line 186
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setVideoRecording(Z)V

    .line 187
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 188
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 190
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0, v0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->updateZoomSlider(IZLcom/motorola/camera/settings/CameraType;)V

    goto/16 :goto_c

    .line 191
    :cond_2e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 192
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 193
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomEnabled()Z

    move-result p1

    .line 194
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionEnabled()Z

    move-result v0

    if-eqz p1, :cond_2f

    .line 195
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    int-to-float v1, v1

    div-float v10, v1, v2

    .line 196
    :cond_2f
    invoke-virtual {p0, p1, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(ZZF)V

    goto/16 :goto_c

    .line 197
    :cond_30
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 198
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_8

    .line 199
    :cond_31
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 200
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_7

    .line 201
    :cond_32
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CONFIGURE_STREAM_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 202
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 203
    invoke-virtual {p0, v6, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setAudioZoomFactor(ZZF)V

    goto/16 :goto_c

    .line 204
    :cond_33
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 205
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 206
    :cond_34
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    goto/16 :goto_c

    .line 207
    :cond_35
    :goto_7
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getVideoSessionData()Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 208
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getMetadata()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ANALYTICS_AUDIO_ZOOM"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    :cond_36
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mAudioZoomEnabled:Z

    goto :goto_c

    .line 210
    :cond_37
    :goto_8
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    .line 211
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setVideoRecording(Z)V

    .line 214
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 215
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 216
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->resetActiveSegment()V

    .line 217
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0, v0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->updateZoomSlider(IZLcom/motorola/camera/settings/CameraType;)V

    .line 218
    :cond_38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v6, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    goto :goto_c

    .line 219
    :cond_39
    :goto_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 220
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 221
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    goto :goto_c

    .line 222
    :cond_3a
    :goto_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showAudioZoomToast()V

    .line 223
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 224
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mWasBeautySliderVisible:Z

    .line 225
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v5, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 226
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 227
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_c

    .line 228
    :cond_3b
    :goto_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setClickable(Z)V

    .line 229
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 230
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->mWasBeautySliderVisible:Z

    if-eqz p1, :cond_3c

    .line 231
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v5, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :cond_3c
    :goto_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateZoomSlider(IZLcom/motorola/camera/settings/CameraType;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveUnLimitedZoomEntityMap()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v3, :cond_a

    if-eqz p2, :cond_a

    if-nez v6, :cond_a

    int-to-float v3, v1

    div-float/2addr v3, v7

    .line 3
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v8, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const/4 v9, 0x2

    aget v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getFormatFloatX(F)F

    move-result v6

    .line 4
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v11, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    aget v10, v10, v5

    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getFormatFloatX(F)F

    move-result v10

    .line 5
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    sget-object v13, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    aget v12, v12, v4

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getFormatFloatX(F)F

    move-result v12

    .line 6
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v14, v14, v9

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    .line 7
    invoke-virtual {v14, v8}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v14

    if-eqz v14, :cond_1

    cmpl-float v14, v3, v6

    if-ltz v14, :cond_1

    .line 8
    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)V

    .line 9
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v14, :cond_5

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showSwitchToast()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v16, v14, v5

    cmpl-float v16, v16, v15

    const v17, 0x3c23d70a    # 0.01f

    if-eqz v16, :cond_4

    cmpl-float v16, v3, v10

    if-ltz v16, :cond_4

    .line 12
    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)V

    .line 13
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v16, :cond_2

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackWideCamera()Z

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    sub-float v6, v6, v17

    cmpl-float v6, v3, v6

    if-nez v6, :cond_5

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showSwitchToast()V

    goto :goto_1

    .line 16
    :cond_4
    aget v6, v14, v4

    cmpl-float v6, v6, v15

    if-eqz v6, :cond_5

    cmpl-float v6, v3, v12

    if-ltz v6, :cond_5

    .line 17
    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateLabel(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)V

    .line 18
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_5

    sub-float v10, v10, v17

    cmpl-float v6, v3, v10

    if-nez v6, :cond_5

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;->showSwitchToast()V

    .line 20
    :cond_5
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 21
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v6, :cond_6

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 22
    aget v10, v10, v5

    cmpg-float v10, v3, v10

    if-gez v10, :cond_6

    .line 23
    invoke-virtual {v0, v13, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    goto :goto_2

    .line 24
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 25
    aget v10, v10, v5

    cmpl-float v10, v3, v10

    if-gez v10, :cond_8

    :cond_7
    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v10, :cond_9

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 26
    aget v10, v10, v9

    cmpg-float v10, v3, v10

    if-gez v10, :cond_9

    .line 27
    :cond_8
    invoke-virtual {v0, v11, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    goto :goto_2

    .line 28
    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    .line 29
    invoke-virtual {v10, v8}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-ne v2, v6, :cond_a

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 30
    aget v6, v6, v9

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_a

    .line 31
    invoke-virtual {v0, v8, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    .line 32
    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    int-to-float v3, v1

    div-float/2addr v3, v7

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    xor-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->updateZoomX(FZ)V

    .line 33
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomValueX(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setValue(ILjava/lang/String;)V

    return-void
.end method
