.class public Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "PanoShotStates.java"

# interfaces
.implements Lcom/motorola/camera/panorama/PanoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/PanoShotStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoInitRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;Lcom/motorola/camera/fsm/camera/states/PanoShotStates$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f1200c0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    new-instance p3, Lcom/motorola/camera/panorama/PanoCameraInfo;

    invoke-direct {p3}, Lcom/motorola/camera/panorama/PanoCameraInfo;-><init>()V

    .line 5
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 7
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    .line 8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iput v0, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    .line 10
    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 11
    iput v0, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    .line 12
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget v0, v0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v0

    .line 15
    iput v0, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    const-string v0, "YVU420_SEMIPLANAR"

    .line 16
    iput-object v0, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mImageFormat:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 18
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v0, "FOCAL_LENGTH"

    .line 19
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 20
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    .line 21
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 22
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 27
    invoke-static {v4, v5}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v4

    .line 28
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v5

    .line 29
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, v5

    mul-float/2addr v0, v4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    div-float/2addr v3, p2

    float-to-double v1, v3

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v7

    double-to-float v1, v1

    div-float/2addr v0, p2

    float-to-double v9, v0

    .line 32
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    mul-double/2addr v9, v3

    div-double/2addr v9, v5

    mul-double/2addr v9, v7

    double-to-float p2, v9

    goto :goto_0

    :cond_0
    const v1, 0x428157a8

    const p2, 0x4223beab

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p2, v0, p1

    .line 33
    aget p2, v0, v2

    aget v0, v0, p1

    .line 34
    iput p2, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    .line 35
    iput v0, p3, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    .line 36
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 37
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SizeF;

    .line 38
    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result p2

    .line 39
    new-instance v1, Landroid/util/SizeF;

    invoke-direct {v1, v0, p2}, Landroid/util/SizeF;-><init>(FF)V

    .line 40
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 41
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 42
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 43
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    sget-object p2, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 45
    new-instance v0, Lcom/motorola/camera/panorama/PanoInitCallable;

    invoke-direct {v0, p3, p0}, Lcom/motorola/camera/panorama/PanoInitCallable;-><init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/panorama/PanoListener;)V

    .line 46
    iget-object p3, p2, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    iget-object p2, p2, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    .line 48
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 49
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 50
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 51
    iput-object p0, p1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
