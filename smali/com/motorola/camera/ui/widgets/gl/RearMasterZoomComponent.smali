.class public Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;
.super Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;
.source "RearMasterZoomComponent.java"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    return-void
.end method


# virtual methods
.method public getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    const/high16 v1, 0x42980000    # 76.0f

    .line 4
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p0, p0

    :goto_0
    add-float/2addr v0, p0

    .line 6
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0
.end method

.method public getCameraType()Lcom/motorola/camera/settings/CameraType;
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    .line 6
    :cond_0
    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    .line 9
    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x42980000    # 76.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDensity:F

    mul-float/2addr p0, v2

    invoke-direct {v1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RearMasterZoomComponent"

    return-object p0
.end method

.method public handleFrameTexture()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onDraw([F[F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->onPreDraw([F[F[F)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

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

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x26

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x27

    if-eq p1, v0, :cond_5

    const/16 v0, 0x48

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x49

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    .line 4
    const-class p1, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateUpdateLayout(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;IJZ)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    if-eq p2, p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;->visibleToggleTexture()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    if-eq p2, p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    :cond_4
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mPeerToggleUnreleased:Z

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;->resetTextureState()V

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerSubFsmListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 4
    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetTextureState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;->visibleToggleTexture()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5
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
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "CAMERA_TYPE"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 7
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->mActiveCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enteringZoomState(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    const-string p1, "TYPE"

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragType:I

    if-ne p1, v2, :cond_7

    .line 12
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->setZoomVisibility(Z)V

    goto :goto_3

    .line 13
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->enableToggleTexture()V

    goto :goto_3

    .line 15
    :cond_6
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public visibleToggleTexture()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->isZoomButtonEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;->isZoomButtonEnable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mVideoRecording:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method
