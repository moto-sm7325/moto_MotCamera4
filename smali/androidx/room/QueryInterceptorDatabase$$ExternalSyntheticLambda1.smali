.class public final synthetic Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :pswitch_1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 6
    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void

    .line 7
    :pswitch_2
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteQuery;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/room/QueryInterceptorProgram;

    .line 8
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object p0, p0, Landroidx/room/QueryInterceptorProgram;->mBindArgsCache:Ljava/util/List;

    .line 10
    invoke-interface {v0, v1, p0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 11
    :goto_1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    .line 13
    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_3

    if-ne v2, v5, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v2

    .line 14
    :goto_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v1, v2, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v4

    .line 15
    :goto_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v1, v2, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    if-eqz v7, :cond_f

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-nez v1, :cond_f

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "ORIGIN_CAMERA_TYPE"

    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    const-string v2, "CAMERA_TYPE"

    .line 21
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    const-string v3, "IS_MANUAL_JUMP"

    .line 22
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v3, :cond_8

    .line 24
    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    .line 25
    :cond_6
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, p0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, p0, :cond_7

    const v9, 0x3fb9999a    # 1.45f

    goto/16 :goto_7

    :cond_7
    move v5, v4

    goto :goto_7

    .line 26
    :cond_8
    :goto_5
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result v3

    .line 27
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result v10

    .line 28
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    .line 29
    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float v11, v9, v11

    .line 31
    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const v13, 0x3f8ccccd    # 1.1f

    if-ne v2, v12, :cond_9

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v14, :cond_9

    .line 32
    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz p0, :cond_c

    div-float v9, v3, v1

    goto :goto_7

    .line 33
    :cond_9
    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v14, :cond_b

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v14, :cond_b

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMacroCameraWithWideSupported()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result p0

    goto :goto_6

    :cond_a
    const p0, 0x3fce76c9    # 1.613f

    :goto_6
    div-float v9, p0, v11

    goto :goto_7

    .line 36
    :cond_b
    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v14, :cond_d

    if-ne v1, v12, :cond_d

    .line 37
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz p0, :cond_c

    div-float v9, v10, v1

    goto :goto_7

    :cond_c
    move v9, v13

    goto :goto_7

    :cond_d
    if-ne v2, v14, :cond_e

    .line 38
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, p0, :cond_e

    .line 39
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr v3, p0

    mul-float v9, v3, v10

    .line 40
    :cond_e
    :goto_7
    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    new-instance v2, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v2}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    .line 43
    iput p0, v2, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    .line 44
    iput v1, v2, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 45
    iput v6, v2, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 46
    iput-boolean v7, v2, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    .line 47
    iput-boolean v8, v2, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 48
    iput-boolean v4, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 49
    iput-boolean v5, v2, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    .line 50
    iput v9, v2, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    .line 51
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    goto :goto_8

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 53
    :cond_f
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 p0, 0x0

    move-object v1, v0

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    .line 54
    :goto_8
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
