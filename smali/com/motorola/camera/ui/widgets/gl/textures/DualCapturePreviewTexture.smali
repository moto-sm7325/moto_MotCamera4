.class public Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;
.source "DualCapturePreviewTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$ReadPixelsCallback;
    }
.end annotation


# static fields
.field public static final VERTICES_DATA_PIP:[F

.field public static final VERTICES_DATA_SS:[F


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mFirstFrameCallbackCount:I

.field public mFrameCallbackCount:I

.field public mFrameCount:I

.field public mFrameTimeEnable:Z

.field public mHandleUIEvent:Z

.field public final mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

.field public mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mStartTime:J

.field public mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public volatile mUpdateAvailable:Z

.field public final zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_PIP:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40d56042    # -0.6665f
        0x0
        0x0
        0x3e2e147b    # 0.17f
        0x3f800000    # 1.0f
        -0x40d56042    # -0.6665f
        0x0
        0x3f800000    # 1.0f
        0x3e2e147b    # 0.17f
        -0x40800000    # -1.0f
        0x3f2a9fbe    # 0.6665f
        0x0
        0x0
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
        0x3f2a9fbe    # 0.6665f
        0x0
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/PreviewSize;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mStartTime:J

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    aput-object v1, v0, p1

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 9
    invoke-direct {p1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 11
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 12
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v4, v7

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$2;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 17
    move-object p3, p2

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p3

    .line 18
    iget p3, p3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    .line 19
    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 20
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string p3, ""

    invoke-direct {p1, p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 21
    :cond_0
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 4

    .line 22
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 24
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    .line 25
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mStartTime:J

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 27
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 29
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 30
    invoke-direct {v2, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    aput-object v2, v1, v0

    .line 31
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 32
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 33
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 34
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 35
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 36
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 37
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 38
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 39
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    .line 40
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    .line 42
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    return-void
.end method


# virtual methods
.method public applyPreviewChange(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {v3, v1, v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 6
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 7
    invoke-direct {v4, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 8
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result v5

    .line 9
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    iget-object v8, v8, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float/2addr v6, v8

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v7

    sub-float/2addr v8, v13

    .line 12
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    iget-object v6, v6, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v6, v2, v6

    :cond_0
    if-eqz v5, :cond_1

    move v2, v8

    goto :goto_0

    :cond_1
    neg-float v2, v8

    .line 14
    :goto_0
    invoke-virtual {v1, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    if-eqz v5, :cond_2

    neg-float v8, v8

    .line 15
    :cond_2
    invoke-virtual {v4, v3, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 16
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 18
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v2, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_3
    move v8, v6

    const/4 v5, 0x4

    goto/16 :goto_5

    :cond_4
    const v2, 0x3ea8f5c3    # 0.33f

    mul-float v8, v6, v2

    if-eqz v5, :cond_5

    move v13, v8

    goto :goto_1

    :cond_5
    move v13, v6

    :goto_1
    if-eqz v5, :cond_6

    move v8, v6

    .line 19
    :cond_6
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3cf5c28f    # 0.03f

    mul-float/2addr v14, v15

    .line 20
    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v15

    int-to-float v15, v15

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v15, v3

    div-float/2addr v15, v7

    sub-float/2addr v15, v14

    .line 21
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v15, v3

    .line 23
    :cond_7
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v10}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v3, v10

    div-float/2addr v3, v7

    sub-float/2addr v3, v14

    .line 24
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez v2, :cond_9

    if-eqz v5, :cond_8

    .line 25
    invoke-virtual {v1, v15, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_2

    .line 26
    :cond_8
    invoke-virtual {v4, v15, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    move-object v1, v2

    goto :goto_2

    :cond_a
    move-object v4, v2

    .line 27
    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_c

    div-float v3, v12, v6

    .line 28
    invoke-virtual {v2, v3, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 29
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v2, v3, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v2, v2, v11

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v5, :cond_b

    move-object v2, v1

    goto :goto_3

    :cond_b
    move-object v2, v4

    .line 31
    :goto_3
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 32
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v3, v3, v9

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 33
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x4

    .line 34
    invoke-virtual {v3, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 35
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 36
    invoke-virtual {v3, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource()V

    goto :goto_4

    :cond_c
    const/4 v5, 0x4

    :goto_4
    move v6, v13

    .line 38
    :goto_5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v6, v6, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 39
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v8, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 40
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 41
    invoke-virtual {v2, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 42
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 43
    invoke-virtual {v1, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 44
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 45
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 46
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 47
    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    return-void
.end method

.method public final firstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 3
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    :cond_0
    return-void
.end method

.method public final getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;)F

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    .line 9
    :cond_1
    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    div-float/2addr v4, v7

    :goto_1
    mul-float/2addr v3, v4

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/gson/FieldAttributes;->scale(F)V

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/PreviewSize;->scale(F)Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v4

    if-nez v4, :cond_3

    .line 13
    invoke-static {v2}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_3

    .line 15
    :cond_3
    :goto_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->centerX()F

    move-result p1

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->centerY()F

    move-result v4

    invoke-direct {v2, p1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 16
    :goto_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/16 v4, 0xb4

    if-eqz p1, :cond_5

    if-ne p1, v4, :cond_4

    goto :goto_4

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    :goto_5
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 18
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr p1, v7

    .line 19
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v7, :cond_7

    if-ne v7, v4, :cond_6

    goto :goto_6

    .line 20
    :cond_6
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    goto :goto_7

    :cond_7
    :goto_6
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    :goto_7
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 21
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v4, v7

    .line 22
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget-object v8, v1, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->height()F

    move-result v8

    cmpg-float v7, v7, v8

    const v8, 0x3ea8f5c3    # 0.33f

    if-gtz v7, :cond_9

    .line 23
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget-object v9, v1, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v9

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->width()F

    move-result v1

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_8

    .line 24
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v6

    div-float/2addr p1, v6

    sub-float/2addr v1, p1

    int-to-float p1, v0

    sub-float/2addr v1, p1

    goto :goto_8

    .line 25
    :cond_8
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v6

    div-float/2addr p1, v6

    add-float/2addr p1, v1

    int-to-float v1, v0

    add-float/2addr v1, p1

    .line 26
    :goto_8
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v8

    div-float/2addr p1, v6

    div-float/2addr v4, v6

    add-float/2addr v4, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 27
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    add-float/2addr p0, v4

    int-to-float p1, v0

    add-float/2addr p0, p1

    goto :goto_a

    .line 28
    :cond_9
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget-object v9, v1, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v9

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->width()F

    move-result v1

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_a

    .line 29
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v6

    div-float/2addr p1, v6

    sub-float/2addr v1, p1

    int-to-float p1, v0

    sub-float/2addr v1, p1

    goto :goto_9

    .line 30
    :cond_a
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v6

    div-float/2addr p1, v6

    add-float/2addr p1, v1

    int-to-float v1, v0

    add-float/2addr p1, v1

    move v1, p1

    .line 31
    :goto_9
    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v8

    div-float/2addr p1, v6

    div-float/2addr v4, v6

    sub-float/2addr p1, v4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 32
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    add-float/2addr p0, p1

    int-to-float p1, v0

    sub-float/2addr p0, p1

    .line 33
    :goto_a
    invoke-virtual {v2, v1, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    return-object v2
.end method

.method public loadTexture()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x42200000    # 40.0f

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v2

    const/high16 v2, 0x41f00000    # 30.0f

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 14
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v2

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v2

    .line 17
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    monitor-exit p0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 9
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onDraw([F[F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public onDrawFbo()V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v0, 0x4100

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    .line 6
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 8
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 10
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 12
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 13
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 14
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 15
    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    .line 16
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameTimeEnable:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mUpdateAvailable:Z

    if-nez v1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 19
    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mStartTime:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_5

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    .line 20
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 21
    sget-object v5, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 22
    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    const/high16 v7, 0x447a0000    # 1000.0f

    double-to-float v3, v3

    div-float/2addr v7, v3

    .line 23
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v6, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 26
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 27
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mStartTime:J

    .line 28
    :cond_5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mUpdateAvailable:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->onPreDraw()Z

    :cond_0
    return-void
.end method

.method public onScrollEnd(ZZ)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5
    :goto_0
    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCaptureSplitVerticalGuideline()F

    move-result p0

    .line 6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_f

    :cond_1
    const/high16 v1, 0x42340000    # 45.0f

    .line 9
    invoke-static {v0}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;)F

    move-result v5

    .line 11
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    .line 12
    :cond_2
    iget-object v6, v6, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    div-float/2addr v6, v8

    :goto_1
    mul-float/2addr v5, v6

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v6

    .line 14
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v8

    if-eqz v4, :cond_3

    move v0, v3

    goto :goto_3

    .line 16
    :cond_3
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v0

    if-eqz v6, :cond_4

    .line 17
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v10

    invoke-interface {v10}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v10

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_2
    add-float/2addr v0, v10

    mul-float/2addr v0, v9

    .line 18
    :goto_3
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070110

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 20
    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 21
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v10

    goto :goto_4

    .line 22
    :cond_5
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v10

    :goto_4
    if-nez v6, :cond_7

    if-eqz v4, :cond_6

    goto :goto_5

    .line 23
    :cond_6
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    move v5, v3

    goto :goto_6

    .line 24
    :cond_7
    :goto_5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/PreviewSize;->scale(F)Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    .line 25
    invoke-virtual {v10, v5}, Lcom/google/gson/FieldAttributes;->scale(F)V

    .line 26
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 27
    :goto_6
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iget-object v11, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v11

    invoke-virtual {v10}, Lcom/google/gson/FieldAttributes;->height()F

    move-result v11

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_b

    .line 28
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iget-object v11, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v11

    invoke-virtual {v10}, Lcom/google/gson/FieldAttributes;->width()F

    move-result v11

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_9

    if-eqz v8, :cond_8

    .line 29
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v6

    int-to-float v6, v9

    sub-float/2addr v2, v6

    goto :goto_7

    .line 30
    :cond_8
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v6

    int-to-float v6, v9

    add-float/2addr v2, v6

    :goto_7
    add-float/2addr v2, v5

    goto :goto_9

    :cond_9
    if-eqz v8, :cond_a

    .line 31
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    int-to-float v6, v9

    add-float/2addr v3, v6

    goto :goto_8

    .line 32
    :cond_a
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    int-to-float v6, v9

    sub-float/2addr v3, v6

    :goto_8
    add-float/2addr v3, v5

    move v12, v3

    move v3, v2

    move v2, v12

    .line 33
    :goto_9
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v4, v0

    iget-object v0, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    invoke-virtual {v10}, Lcom/google/gson/FieldAttributes;->height()F

    move-result v0

    add-float/2addr v0, v4

    int-to-float v4, v9

    sub-float/2addr v0, v4

    goto/16 :goto_d

    .line 34
    :cond_b
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iget-object v11, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v11

    invoke-virtual {v10}, Lcom/google/gson/FieldAttributes;->width()F

    move-result v11

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_d

    if-eqz v8, :cond_c

    .line 35
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    int-to-float v6, v9

    sub-float/2addr v3, v6

    goto :goto_a

    .line 36
    :cond_c
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v6

    int-to-float v6, v9

    add-float/2addr v3, v6

    :goto_a
    add-float/2addr v3, v5

    goto :goto_c

    :cond_d
    if-eqz v8, :cond_e

    .line 37
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v6

    int-to-float v6, v9

    add-float/2addr v2, v6

    goto :goto_b

    .line 38
    :cond_e
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget-object v6, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    int-to-float v6, v9

    sub-float/2addr v2, v6

    :goto_b
    add-float/2addr v2, v5

    move v12, v3

    move v3, v2

    move v2, v12

    .line 39
    :goto_c
    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v4, v0

    iget-object v0, v10, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    int-to-float v0, v9

    add-float/2addr v4, v0

    move v0, v4

    move v12, v3

    move v3, v2

    move v2, v12

    .line 40
    :goto_d
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v4, :cond_10

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 42
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    goto :goto_e

    .line 43
    :cond_f
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 44
    :goto_e
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 45
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v6, 0x4

    .line 46
    invoke-virtual {v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 47
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 48
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 49
    invoke-virtual {v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 50
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_10
    move p0, v2

    move v2, v3

    move v3, v1

    .line 51
    :goto_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p0, "DUAL_PREVIEW_DRAG_POSITION"

    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "DUAL_PREV_SWAP_BTN_ROTATION"

    .line 53
    invoke-virtual {v1, p0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "DUAL_PREV_SWAP_BTN_ROTATION_X"

    .line 54
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "DUAL_PREV_DRAG_ACTION_UP"

    .line 55
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "DUAL_PREV_APPLY_PREVIEW_DONE"

    .line 56
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 58
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public registerListener(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_1
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    .line 11
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1
.end method

.method public setClosing(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    monitor-exit v0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    .line 9
    monitor-exit v0

    throw p0
.end method

.method public setDisplayOrientation(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_3

    .line 5
    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 7
    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 8
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 9
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 10
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v2

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    int-to-float v2, v1

    sub-float/2addr v2, v9

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    const/high16 v5, 0x43b40000    # 360.0f

    if-gez v3, :cond_0

    add-float/2addr v2, v5

    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    sub-float/2addr v2, v5

    :cond_1
    add-float v10, v9, v2

    .line 11
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;

    invoke-direct {v6, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;F)V

    const-wide/16 v7, 0x12c

    const/16 v17, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x2

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 v3, 0x3

    new-array v5, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 12
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    aput-object v6, v5, v4

    invoke-virtual {v2, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 18
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$5;

    invoke-direct {v12, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v13, 0x12c

    const/16 v18, 0x0

    move-object v11, v5

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    new-array v1, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 19
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    aput-object v3, v1, v7

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    aput-object v6, v1, v9

    aput-object v3, v1, v4

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v5, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 20
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/2addr v0, v4

    invoke-virtual {v1, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_3
    return-void
.end method

.method public setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    monitor-exit v0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_1
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    monitor-exit v0

    .line 9
    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_2
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FrameCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    monitor-exit v0

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FrameCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    .line 18
    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p0

    .line 19
    monitor-exit v0

    throw p0

    :catchall_3
    move-exception p0

    .line 20
    monitor-exit v0

    throw p0
.end method

.method public final setToggleResource()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 4
    iput v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 5
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    const/4 v2, -0x1

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isFrontMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v2, 0x7f080269

    goto :goto_2

    .line 8
    :cond_1
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    const v2, 0x7f080268

    goto :goto_2

    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Can\'t find xml resource for cameraType:%s"

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualCapturePreviewTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    goto/16 :goto_7

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    goto :goto_3

    .line 14
    :cond_5
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 15
    :goto_3
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 17
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;

    if-nez v0, :cond_6

    return-void

    .line 18
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const-string v4, ""

    if-nez v2, :cond_7

    move-object v2, v4

    goto :goto_4

    :cond_7
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    .line 19
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    goto :goto_5

    .line 22
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 23
    :goto_5
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 24
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_9

    .line 25
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 26
    :cond_9
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-static {v4, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 30
    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 31
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public setVerticesData()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS:[F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    const v1, 0x4211745d

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v1

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_PIP:[F

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    .line 8
    :goto_0
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->setRadius(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    monitor-exit v1

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_2

    move v2, v4

    .line 13
    :cond_2
    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->setRadius(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v1

    throw p0
.end method

.method public setVisibility(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_2
    return-void
.end method

.method public shouldProcessUiEventStream(FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    sub-float/2addr p2, v0

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/FieldAttributes;->scale(F)V

    .line 8
    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/FieldAttributes;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    .line 9
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mUpdateAvailable:Z

    return-void
.end method

.method public updateToggleResource()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource()V

    :cond_0
    return-void
.end method
