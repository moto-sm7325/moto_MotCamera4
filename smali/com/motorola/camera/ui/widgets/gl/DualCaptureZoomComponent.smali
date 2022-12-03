.class public abstract Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;
.source "DualCaptureZoomComponent.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mExistFromZoom:Z

.field public mExitFromPrelockFocus:Z

.field public mPeerToggleUnreleased:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 3
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p2

    .line 4
    iget p2, p2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    const/4 v1, 0x0

    .line 5
    invoke-direct {p1, v0, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    return-void
.end method


# virtual methods
.method public enableToggleTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public exitingZoomState()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const-wide/16 v3, 0x5dc

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_1
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    .line 8
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    return-void
.end method

.method public getBackSwitchBundle(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;)Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CAMERA_TYPE"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "ORIGIN_CAMERA_TYPE"

    .line 3
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "IS_MANUAL_JUMP"

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_ZOOM:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const-string p2, "SWITCH_CASE"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    const-string p2, "DUAL_CAPTURE_CAMERA_TYPE_MASTER"

    .line 8
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p0
.end method

.method public getDragBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    const-string v2, "CAMERA_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mScrollOffset:F

    const-string v2, "VALUE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragOrientation:I

    const-string v2, "ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "TYPE"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->getUnitSegWidth()I

    move-result v1

    const-string v3, "ZOOM_SEG_UNIT"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    const-string v1, "VIDEO_RECORDING"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "ENABLE"

    .line 8
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "SAME_ID"

    .line 9
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DualCaptureZoomComponent"

    return-object p0
.end method

.method public hideZoomTextures()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->hideZoomTextures(Z)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isZoomButtonEnable()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x42200000    # 40.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr p0, v3

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public declared-synchronized loadTextures()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 3
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    .line 7
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    .line 8
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->loadTextures()Z

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->registerListener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateLayout()V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onZoomCompleted()V
    .locals 0

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

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    if-eq p4, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomRatio(ILcom/motorola/camera/settings/CameraType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final registerListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 5
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 9
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 13
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 14
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 17
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 18
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 19
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 20
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 21
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 22
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 23
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 24
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 25
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 26
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 27
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 28
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :goto_0
    return-void
.end method

.method public setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 4
    invoke-interface {v3, v4, v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v2

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    :goto_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v4, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 8
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v7, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 9
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v9, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v8

    mul-float/2addr v8, v5

    float-to-int v5, v8

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getMaxUiRatio()I

    move-result v8

    .line 11
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveUnLimitedZoomEntityMap()Ljava/util/Map;

    move-result-object v10

    .line 12
    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v11, v15, :cond_5

    .line 13
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v15, :cond_3

    if-eq v1, v13, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v1, v12, v12, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v1, v12, v6, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v1, v2, v12, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 18
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v2, v15, [Landroid/util/Range;

    new-instance v4, Landroid/util/Range;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v6, 0x421c0000    # 39.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v4, v2, v14

    invoke-virtual {v1, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto/16 :goto_3

    :cond_5
    const/16 v14, 0x9

    if-ne v11, v13, :cond_a

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 20
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 21
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 22
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v4, v2, v6, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 23
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v2, v2, v15

    .line 24
    invoke-static {v15, v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(ZLcom/motorola/camera/settings/CameraType;)F

    move-result v1

    .line 25
    invoke-virtual {v0, v2, v1, v14}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    .line 26
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v4, v13, [Landroid/util/Range;

    new-instance v5, Landroid/util/Range;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    int-to-float v8, v14

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v5, v4, v6

    new-instance v5, Landroid/util/Range;

    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v5, v4, v15

    .line 28
    invoke-virtual {v2, v4, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto/16 :goto_3

    .line 29
    :cond_6
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 30
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 31
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v2, v12, v6, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 32
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v4, v2, v15

    .line 33
    aget v2, v2, v13

    .line 34
    invoke-virtual {v0, v4, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    .line 35
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v4, v4, v13

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    .line 37
    invoke-virtual {v0, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    .line 38
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v5, v13, [Landroid/util/Range;

    new-instance v6, Landroid/util/Range;

    const/4 v7, 0x0

    .line 39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-int/2addr v2, v14

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v5, v7

    new-instance v6, Landroid/util/Range;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-int/2addr v1, v14

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v5, v15

    .line 42
    invoke-virtual {v4, v5, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto/16 :goto_3

    .line 43
    :cond_7
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 44
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 45
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 46
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v4, v2, v12, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    goto :goto_2

    .line 47
    :cond_8
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v4, v2, v6, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 48
    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v4, v2, v15

    .line 49
    aget v2, v2, v13

    .line 50
    invoke-virtual {v0, v4, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    .line 51
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v4, v4, v13

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    .line 53
    invoke-virtual {v0, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    .line 54
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v5, v13, [Landroid/util/Range;

    new-instance v6, Landroid/util/Range;

    const/4 v7, 0x0

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-float v9, v14

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v8, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v5, v7

    new-instance v6, Landroid/util/Range;

    .line 56
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/2addr v1, v14

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v5, v15

    .line 58
    invoke-virtual {v4, v5, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto/16 :goto_3

    .line 59
    :cond_9
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v4, v2, v6, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 60
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v2, v2, v15

    .line 61
    invoke-static {v15, v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(ZLcom/motorola/camera/settings/CameraType;)F

    move-result v1

    .line 62
    invoke-virtual {v0, v2, v1, v14}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    .line 63
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v4, v13, [Landroid/util/Range;

    new-instance v5, Landroid/util/Range;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    int-to-float v8, v14

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v5, v4, v6

    new-instance v5, Landroid/util/Range;

    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v5, v4, v15

    .line 65
    invoke-virtual {v2, v4, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    goto :goto_3

    :cond_a
    const/4 v4, 0x3

    if-ne v11, v4, :cond_b

    .line 66
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v7, v2, v6, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentRatios(IIII)V

    .line 67
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v5, v2, v15

    .line 68
    aget v2, v2, v13

    .line 69
    invoke-virtual {v0, v5, v2, v14}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v2

    .line 70
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v5, v5, v13

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    .line 72
    invoke-virtual {v0, v5, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->calZoomSliderSegment(FFI)I

    move-result v1

    .line 73
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    new-array v4, v4, [Landroid/util/Range;

    new-instance v6, Landroid/util/Range;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-float v9, v14

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v8, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v4, v7

    new-instance v6, Landroid/util/Range;

    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v4, v15

    new-instance v6, Landroid/util/Range;

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v6, v4, v13

    .line 76
    invoke-virtual {v5, v4, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;Z)V

    .line 77
    :cond_b
    :goto_3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setZoomCompStyle(Z)V

    return-void
.end method

.method public setupZoomTextures()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomTexture(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateLayout()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->resetTextureState()V

    :cond_2
    return-void
.end method

.method public showLabelMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->exitingZoomState()V

    goto/16 :goto_b

    .line 4
    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 6
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v1, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v1, v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    :cond_2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 11
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 12
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 14
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    .line 15
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    .line 16
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    goto/16 :goto_b

    .line 17
    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 20
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_5

    move-object v1, v5

    goto :goto_0

    :cond_5
    const-string v1, "USE_CASE"

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    :goto_0
    if-eqz p1, :cond_6

    const-string v6, "IS_MANUAL_JUMP"

    .line 23
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    if-eqz p1, :cond_7

    const-string v3, "ORIGIN_CAMERA_TYPE"

    .line 24
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    :cond_7
    move-object v3, v5

    :goto_2
    if-eqz p1, :cond_8

    const-string v6, "CAMERA_TYPE"

    .line 25
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    goto :goto_3

    :cond_8
    move-object v6, v5

    :goto_3
    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const-string v5, "ZOOM_SEGMENT"

    .line 26
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    :goto_4
    if-eqz v5, :cond_a

    .line 27
    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 28
    :cond_a
    sget-object p0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v1, p0, :cond_22

    if-nez v2, :cond_22

    .line 29
    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 30
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 31
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result p0

    div-float/2addr v4, p0

    .line 32
    invoke-static {v0, v4}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_b

    .line 33
    :cond_b
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p0, :cond_22

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, p0, :cond_22

    .line 34
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result p0

    div-float/2addr v4, p0

    .line 35
    invoke-static {v0, v4}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    goto/16 :goto_b

    .line 36
    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_d

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 38
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 43
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_b

    .line 44
    :cond_d
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, -0x1

    if-eqz v1, :cond_10

    .line 45
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 46
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    new-array p1, v7, [F

    .line 47
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 48
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 49
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 50
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 52
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    array-length v0, p1

    sub-int/2addr v0, v2

    aput v4, p1, v0

    .line 53
    :cond_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V

    .line 55
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 57
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    .line 58
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    .line 59
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    int-to-float v0, v0

    .line 60
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMaxX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 61
    invoke-virtual {p0, v0, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->updateZoomIgnoreVisible(IZLcom/motorola/camera/settings/CameraType;)V

    goto/16 :goto_b

    .line 62
    :cond_10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 63
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 64
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 65
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_11

    const-string v0, "PRELOCK_FOCUS_EXIT"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_5

    :cond_11
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    goto/16 :goto_b

    .line 67
    :cond_12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 68
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    if-eqz p1, :cond_13

    .line 69
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    goto/16 :goto_b

    .line 70
    :cond_13
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 71
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 72
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    if-nez p1, :cond_14

    .line 73
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_6

    .line 74
    :cond_14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    .line 75
    :goto_6
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    .line 76
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    .line 77
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz p1, :cond_22

    .line 78
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->sendBackSwitchEvent(Lcom/motorola/camera/settings/CameraType;ZLcom/motorola/camera/settings/CameraType;)V

    .line 79
    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mPendingCameraType:Lcom/motorola/camera/settings/CameraType;

    goto/16 :goto_b

    .line 80
    :cond_15
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 81
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 82
    iput-boolean v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 83
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    goto/16 :goto_b

    .line 84
    :cond_16
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 85
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 86
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 87
    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    goto/16 :goto_a

    .line 88
    :cond_17
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 89
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 90
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 91
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 92
    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 93
    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 94
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 95
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_8

    .line 96
    :cond_18
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 97
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mHideToggleListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v1, v4}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 98
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 99
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 100
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 101
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->resetFlags()V

    .line 102
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 103
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 104
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 105
    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    const/16 p1, 0x64

    .line 106
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    .line 107
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    .line 108
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    goto/16 :goto_b

    .line 109
    :cond_19
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 110
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 111
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 112
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 113
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 114
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 115
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 116
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 117
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 118
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 119
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 120
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LIGHT_SOFTWARE_FLASH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 121
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 122
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_7

    .line 123
    :cond_1a
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 124
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    goto/16 :goto_b

    .line 125
    :cond_1b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 126
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    .line 127
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setVideoRecording(Z)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 130
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0, v0, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateZoomSlider(IZLcom/motorola/camera/settings/CameraType;)V

    goto :goto_b

    .line 131
    :cond_1c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 132
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    .line 133
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setVideoRecording(Z)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->setupZoomSlider(Lcom/motorola/camera/settings/CameraType;)V

    .line 137
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    .line 138
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    .line 139
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    invoke-virtual {p0, v0, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->updateZoomSlider(IZLcom/motorola/camera/settings/CameraType;)V

    .line 140
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_22

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    goto :goto_b

    .line 141
    :cond_1d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 142
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    goto :goto_b

    .line 143
    :cond_1e
    :goto_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    goto :goto_b

    .line 146
    :cond_1f
    :goto_8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 147
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    if-nez p1, :cond_20

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    if-nez p1, :cond_20

    .line 148
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_9

    .line 149
    :cond_20
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    .line 150
    :goto_9
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    goto :goto_b

    .line 151
    :cond_21
    :goto_a
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    .line 152
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 153
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    :cond_22
    :goto_b
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExistFromZoom:Z

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mExitFromPrelockFocus:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->registerListener(Z)V

    .line 6
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->unloadTextures()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateLayout()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FFF)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public updateZoomSlider(IZLcom/motorola/camera/settings/CameraType;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

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

    :goto_0
    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v3, :cond_9

    if-eqz p2, :cond_9

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p2

    if-eqz p2, :cond_9

    int-to-float p2, p1

    div-float/2addr p2, v6

    .line 3
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p3, v3, :cond_1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 4
    aget v7, v7, v5

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 5
    invoke-virtual {p0, v1, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 7
    aget v7, v7, v5

    cmpl-float v7, p2, v7

    if-gez v7, :cond_3

    :cond_2
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p3, v7, :cond_8

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 8
    aget v7, v7, v8

    cmpg-float v7, p2, v7

    if-gez v7, :cond_8

    .line 9
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 11
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    aget v3, v3, v8

    cmpg-float p2, p2, v3

    if-gez p2, :cond_5

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p3, p2, :cond_5

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result p2

    if-eqz p2, :cond_4

    move-object v1, v2

    :cond_4
    move-object v2, v1

    goto :goto_1

    .line 13
    :cond_5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v0, v2

    :cond_6
    move-object v2, v0

    .line 14
    :cond_7
    :goto_1
    invoke-virtual {p0, v2, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    if-ne p3, v3, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSegments:[F

    .line 16
    aget v1, v1, v8

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_9

    .line 17
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 18
    invoke-virtual {p0, v0, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;ZLcom/motorola/camera/settings/CameraType;)V

    .line 19
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    int-to-float p3, p1

    div-float/2addr p3, v6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mJumping:Z

    xor-int/2addr v0, v5

    invoke-virtual {p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->updateZoomX(FZ)V

    .line 20
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setValue(ILjava/lang/String;)V

    return-void
.end method
