.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "CameraPreview.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;,
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;,
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;,
        Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
    }
.end annotation


# static fields
.field public static final VIEW_MATRIX:[F


# instance fields
.field public mAlpha:F

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBlurTexSize:Landroid/graphics/PointF;

.field public mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public mCaptureType:I

.field public mContinuousBlur:Z

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

.field public mDelayUpdateTexture:Z

.field public final mDensity:F

.field public mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

.field public mEnableUiEvent:Z

.field public mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

.field public mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mFromMode:I

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsControlPanelOpened:Z

.field public mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

.field public mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

.field public mModeSwitchTargetRatio:F

.field public mOffScreenPrj:[F

.field public mOrientation:I

.field public final mPreviewChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/PreviewChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreviewDiffList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/PreviewDiff;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mProcessUiEvent:Z

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mSkipGestureDetector:Z

.field public mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

.field public mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

.field public mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

.field public mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mTeleMinZoom:I

.field public mToMode:I

.field public final mUiEventScale:F


# direct methods
.method public static $r8$lambda$w1ZRw41-r2fZt5KSjS4LdgcSXD8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    .line 3
    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x7

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    .line 5
    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    .line 9
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 14
    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    .line 15
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-static {p1}, Landroidx/fragment/R$anim;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 17
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    .line 18
    new-instance p1, Landroid/view/GestureDetector;

    .line 19
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyGestureListener;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    .line 21
    new-instance p1, Landroid/view/ScaleGestureDetector;

    .line 22
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 24
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    return-void
.end method

.method public static getViewMatrixOrigin()[F
    .locals 12

    .line 1
    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-object v11
.end method

.method public static isSuperZoomMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized animateCapture()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    const-wide/16 v3, 0xc8

    const/4 v1, 0x3

    .line 7
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    if-ne v1, v5, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 8
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;

    invoke-direct {v1, p0, p1, p5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;F)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 3
    iput-object p2, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v8, p6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateFadeForGallery()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_0
    move-object v3, v0

    const-wide/16 v4, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;Z)V

    return-void
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 2
    iget-object v1, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 3
    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v2, v12

    .line 4
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float v14, v1, v12

    const/4 v15, 0x0

    cmpl-float v1, v13, v15

    if-eqz v1, :cond_10

    cmpl-float v1, v14, v15

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 5
    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>()V

    .line 6
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 7
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [F

    const/4 v4, 0x0

    neg-float v2, v13

    neg-float v10, v14

    const v9, 0x419feb85    # 19.99f

    const/high16 v16, 0x42100000    # 36.0f

    move v5, v2

    move v6, v13

    move v7, v10

    move v8, v14

    move/from16 v17, v10

    move/from16 v10, v16

    .line 8
    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 9
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 10
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x42100000    # 36.0f

    move/from16 v7, v17

    .line 11
    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 12
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 13
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const v9, 0x419feb85    # 19.99f

    .line 14
    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 15
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 16
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    .line 17
    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 18
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 19
    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    .line 20
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    .line 23
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v17

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v18

    const/4 v10, 0x2

    if-eqz v18, :cond_2

    .line 25
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    :cond_1
    :goto_0
    move-object v9, v1

    goto/16 :goto_2

    .line 26
    :cond_2
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 27
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 28
    invoke-virtual {v1, v2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 29
    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    .line 31
    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    .line 33
    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 34
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v2, v12

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_0

    .line 35
    :cond_3
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 36
    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 39
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 41
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v2

    goto :goto_1

    .line 42
    :cond_4
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 43
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getInsetBottomSize()I

    move-result v2

    .line 44
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 45
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v10

    sub-int/2addr v2, v3

    .line 46
    :goto_1
    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    .line 47
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 48
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getInsetTop()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v2, v12

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_0

    :goto_2
    if-eqz v18, :cond_5

    .line 49
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_3

    .line 50
    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_3
    move-object v8, v1

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_7

    .line 51
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v3, 0x3

    .line 52
    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v19

    .line 53
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v20

    if-eqz v18, :cond_6

    .line 54
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 55
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 56
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->applyPreviewChange(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_4

    .line 58
    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 59
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 60
    invoke-virtual {v1, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 61
    :goto_4
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v21

    .line 62
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v22

    move-object/from16 v1, p0

    move-object v2, v8

    const/16 v23, 0x3

    move-object/from16 v3, v20

    move/from16 v24, v4

    move/from16 v4, v17

    move v15, v5

    move/from16 v5, v24

    move v12, v6

    move-object/from16 v6, v19

    .line 63
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 64
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 65
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v26, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    move-object/from16 v4, v20

    move-object/from16 p2, v5

    move/from16 v5, v24

    move/from16 v6, v16

    move v12, v7

    move-object v7, v8

    move-object/from16 v20, v8

    move/from16 v8, v17

    move-object/from16 v33, v9

    move-object/from16 v9, v22

    move/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/textures/Texture;FLcom/motorola/camera/ui/widgets/gl/Rotation;Z)V

    const-wide/16 v27, 0x12c

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x2

    const/16 v32, 0x0

    move-object/from16 v25, p2

    invoke-direct/range {v25 .. v32}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-array v1, v12, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v20, v1, v15

    .line 66
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v7, 0x2

    aput-object v2, v1, v7

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    aput-object v2, v1, v23

    .line 67
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 68
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v8, v33

    goto :goto_6

    :cond_7
    move v15, v5

    move v12, v7

    move-object/from16 v20, v8

    move-object/from16 v33, v9

    move v7, v10

    if-eqz v18, :cond_8

    .line 69
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 70
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 71
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->applyPreviewChange(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    move-object/from16 v8, v33

    goto :goto_5

    .line 73
    :cond_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 74
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    move-object/from16 v8, v33

    .line 75
    invoke-virtual {v1, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 76
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v21

    .line 77
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v22

    .line 78
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 79
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v4, v17

    move/from16 v5, v16

    .line 80
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    :goto_6
    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v18, :cond_a

    .line 81
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_9

    .line 82
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v5, :cond_9

    .line 83
    invoke-virtual {v0, v15}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    .line 84
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v9, v4

    float-to-int v9, v9

    .line 85
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v10

    int-to-float v15, v9

    mul-float/2addr v10, v15

    float-to-int v10, v10

    const/high16 v20, 0x41800000    # 16.0f

    .line 86
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float v4, v4, v20

    float-to-int v4, v4

    .line 87
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v3, v9, v10}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 88
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v9, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 89
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v6, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 90
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v22, v15, v9

    sub-float v8, v8, v22

    int-to-float v4, v4

    sub-float/2addr v8, v4

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v7, v16, v7

    int-to-float v10, v10

    div-float v22, v10, v9

    sub-float v7, v7, v22

    sub-float/2addr v7, v4

    const/4 v4, 0x0

    invoke-direct {v3, v8, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 91
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 92
    invoke-virtual {v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 93
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 94
    invoke-virtual {v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 95
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 96
    invoke-virtual {v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 97
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 98
    invoke-virtual {v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 99
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v3, v15, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 100
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v4, v6

    add-float v7, v4, v15

    add-float/2addr v4, v10

    invoke-virtual {v3, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 101
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 102
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 103
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 104
    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v4

    if-eqz v4, :cond_9

    mul-float/2addr v15, v3

    .line 105
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    int-to-float v3, v3

    mul-float/2addr v15, v3

    float-to-int v3, v15

    .line 106
    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v4

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 107
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v4, v4

    invoke-virtual {v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 108
    :cond_9
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 109
    iget-object v4, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 110
    iget-object v5, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 111
    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 112
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v3, v4, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 113
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 114
    invoke-virtual {v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 115
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 116
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v13, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 117
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v4

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v4, v6

    sub-float/2addr v14, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 118
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v4

    div-float/2addr v4, v5

    sub-float/2addr v14, v4

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v3, v13, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 120
    :cond_a
    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 121
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x43870000    # 270.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_c

    :cond_b
    move/from16 v34, v3

    move v3, v1

    move/from16 v1, v34

    .line 122
    :cond_c
    new-instance v2, Landroid/graphics/Rect;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    mul-float v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v1, v4

    mul-float v1, v1, v17

    .line 123
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    iget-object v1, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 125
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 126
    iget-object v3, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 127
    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 128
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 129
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 130
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iput-object v2, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 132
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 133
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 134
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz v3, :cond_d

    goto :goto_7

    .line 136
    :cond_d
    iget-object v3, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v3

    .line 137
    :try_start_1
    iget-object v4, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result v5

    invoke-static {v5}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 138
    iget-object v4, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->area(Landroid/graphics/Rect;)I

    move-result v5

    invoke-static {v5}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit v3

    .line 140
    iput-object v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 141
    monitor-exit v3

    throw v0

    :cond_e
    :goto_7
    if-eqz v18, :cond_f

    .line 142
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd(ZZ)V

    :cond_f
    return-void

    :catchall_1
    move-exception v0

    .line 143
    monitor-exit v1

    throw v0

    :cond_10
    :goto_8
    return-void
.end method

.method public final applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, p3, p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FFF)V

    .line 5
    invoke-virtual {p1, v0, p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1, p4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 8
    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p4, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 9
    iget p2, p5, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 p5, 0x42b40000    # 90.0f

    cmpl-float p5, p2, p5

    if-eqz p5, :cond_1

    const/high16 p5, 0x43870000    # 270.0f

    cmpl-float p2, p2, p5

    if-nez p2, :cond_2

    .line 10
    :cond_1
    iget p2, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p5, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p4, p2, p5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 12
    invoke-virtual {p2, v2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 13
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p5

    .line 14
    invoke-virtual {p2, v2, p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget p5, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p5, v1

    mul-float/2addr p5, p3

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p4, v1

    mul-float/2addr p4, p3

    invoke-virtual {p2, p5, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final clearMeisheEffects()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    .line 3
    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_clear_meishe_effect_thumbnails()V

    .line 5
    sget-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final copyFrame([F[F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 6
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawFbo([F[F)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized copyPreviewFrame(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 5
    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x5

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    const/4 v6, 0x7

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v2, v6

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v1, v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 18
    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final darkenPreview(Z)V
    .locals 10

    if-eqz p1, :cond_0

    const p1, 0x3ebd70a4    # 0.37f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    const-wide/16 v2, 0xc8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 12
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    return-void
.end method

.method public final deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 6
    monitor-enter p0

    const/4 v4, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 9
    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 10
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 14
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    monitor-exit p0

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    monitor-exit p0

    .line 17
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    .line 18
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v6

    .line 19
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSlavePreviewImageReader()Landroid/media/ImageReader;

    move-result-object v7

    .line 20
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSubPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v5

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 23
    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    .line 24
    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCallbackCount:I

    .line 25
    iput v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameCount:I

    .line 26
    iput-boolean v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mUpdateAvailable:Z

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    goto :goto_2

    .line 30
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    .line 31
    :goto_2
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 32
    iput-boolean v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 33
    invoke-virtual {v8, v6, v9, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 34
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 35
    iput-boolean v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 36
    invoke-virtual {v5, v7, v9, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto/16 :goto_7

    .line 37
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    .line 38
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v11

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 41
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v4

    goto :goto_3

    :cond_6
    move v10, v0

    .line 42
    :goto_3
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 43
    iput-boolean v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 45
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v12

    .line 47
    invoke-virtual {v10, v8, v12, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_4

    .line 48
    :cond_7
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v12, v8, v9, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 49
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 50
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 51
    iput-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual {v6, v8, v9, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_5

    .line 54
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 55
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 56
    iput-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-virtual {v6, v10, v9, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 58
    :cond_9
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 59
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v6, :cond_b

    .line 60
    iput-boolean v4, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 63
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    .line 64
    :goto_6
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v7, v8, v6, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    .line 65
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    .line 66
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    new-instance v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_8

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    new-instance v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 70
    monitor-enter v0

    .line 71
    :try_start_1
    iput-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    monitor-exit v0

    .line 73
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 74
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_d

    .line 75
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    .line 76
    monitor-enter p1

    .line 77
    :try_start_2
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p1

    goto :goto_8

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    .line 79
    monitor-exit v0

    throw p0

    .line 80
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    .line 81
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 82
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 83
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_e

    const-string p0, "CameraPreview"

    const-string p1, "deferInitSurface dur:"

    .line 85
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :catchall_2
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized enableFpsReporting()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 7
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v3

    const/4 v4, 0x2

    .line 8
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 11
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFrameTimeEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 16
    :cond_3
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    :cond_4
    move v1, v2

    .line 17
    :cond_5
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :try_start_3
    iput-boolean v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 21
    :try_start_5
    monitor-exit v5

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;[F[F)V
    .locals 8

    const/16 p0, 0xb90

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 p0, 0x1e00

    const/16 v0, 0x1e01

    .line 2
    invoke-static {p0, p0, v0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const-string v0, "glStencilOp"

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const-string v2, "glColorMask"

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const-string v3, "glDepthMask"

    .line 8
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v4, 0x207

    const/4 v5, 0x1

    const/16 v6, 0xff

    .line 9
    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const-string v4, "glStencilFunc"

    .line 10
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 11
    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    .line 12
    iget-boolean v7, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDraw([F[F)V

    .line 13
    :cond_0
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 15
    invoke-static {v5}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 16
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p0, p0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 18
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 p0, 0x202

    .line 19
    invoke-static {p0, v5, v6}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 20
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 21
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    return-void
.end method

.method public declared-synchronized getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$4;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-direct {v0, p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    :goto_0
    return-object p0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PreviewSize;->scale(F)Lcom/motorola/camera/PreviewSize;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Lcom/motorola/camera/PreviewSize;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast p1, Landroid/util/Size;

    invoke-direct {p0, p1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    return-object p0
.end method

.method public final getScissorRect(FI)Landroid/graphics/RectF;
    .locals 6

    .line 1
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v1

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {p1, v1, v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object v1

    const/16 v2, 0x3e8

    if-ne p2, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 5
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iget-object v3, v1, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 7
    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    iput p0, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 8
    :cond_1
    iget-object p0, v1, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 9
    invoke-interface {p1, p2, v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result v0

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    move v0, v1

    .line 10
    :cond_2
    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale(Lcom/motorola/camera/PreviewSize;I)F

    move-result p1

    .line 12
    new-instance p2, Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v3, v2

    mul-float/2addr v3, p1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v4, p0

    mul-float/2addr v4, p1

    mul-float/2addr v2, p1

    mul-float/2addr p0, p1

    invoke-direct {p2, v3, v4, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    return-object p2
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/Collection;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x22

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_VSTAB_STOP_DETECTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraPreview"

    return-object p0
.end method

.method public final handleHDR10ModeState(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_f

    .line 2
    iget-object v5, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v5

    .line 4
    iget-object v6, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v11, "BANNER_SWITCH"

    .line 8
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    new-array v7, v7, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v2, v7, v9

    aput-object v1, v7, v8

    .line 12
    invoke-static {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v1

    if-ne v5, v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    const-string v2, "FROM_FACING"

    const/4 v5, -0x1

    .line 13
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    :cond_1
    if-eqz v0, :cond_3

    if-ne v2, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v2

    .line 15
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v10

    const-string v11, "MODE"

    .line 16
    invoke-virtual {p1, v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v5, :cond_4

    move v11, v10

    :cond_4
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "SRC_MODE"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v10

    :goto_3
    if-ne p1, v5, :cond_7

    goto :goto_4

    :cond_7
    move v10, p1

    .line 18
    :goto_4
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->ENTER_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-eq v6, p1, :cond_9

    if-nez v6, :cond_8

    .line 19
    invoke-static {v11, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v9

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v8

    .line 20
    :goto_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-eq v6, v0, :cond_b

    if-nez v6, :cond_a

    .line 21
    invoke-static {v10, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move v0, v9

    goto :goto_8

    :cond_b
    :goto_7
    move v0, v8

    .line 22
    :goto_8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p1, v4}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-nez v1, :cond_d

    .line 26
    :cond_c
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    return v8

    :cond_e
    return v9

    .line 28
    :cond_f
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    return v8

    :cond_10
    return v9

    .line 31
    :cond_11
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 32
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_a

    .line 33
    :cond_12
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 34
    iput-boolean v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    .line 35
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 36
    iget-object v6, v6, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 37
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 38
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v10, v6, v9

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v10, v6, v8

    aput-object v0, v6, v7

    const/4 v0, 0x3

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v1, v6, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v6, v0

    .line 39
    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 41
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 42
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 44
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    .line 45
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 46
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    if-eqz p1, :cond_13

    const v0, 0x3ebd70a4    # 0.37f

    :cond_13
    move v6, v0

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 48
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v7, 0x7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    goto :goto_9

    .line 49
    :cond_14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    const/4 v7, 0x7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    .line 50
    :goto_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 51
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 53
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 55
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 57
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_15
    return v8

    .line 58
    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 59
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 60
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 61
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    return v9

    .line 62
    :cond_18
    :goto_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 63
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    .line 64
    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 65
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 66
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 68
    invoke-virtual {p0, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    return v8

    .line 69
    :cond_19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 70
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 71
    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 72
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 73
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_1d

    .line 74
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 75
    invoke-virtual {p0, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;Z)V

    goto :goto_c

    .line 76
    :cond_1a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 77
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_c

    .line 78
    :cond_1b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 79
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 80
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 81
    sget-object p1, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    .line 82
    const-class p1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter p1

    .line 83
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_init()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_b

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 84
    :cond_1c
    :goto_b
    invoke-virtual {p0, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    :cond_1d
    :goto_c
    return v8

    :cond_1e
    return v9
.end method

.method public final isDualCaptureTextureEnabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public declared-synchronized loadTextures()Z
    .locals 17

    move-object/from16 v8, p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 2
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 3
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 4
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x1

    sget-object v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v6, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v5, v10

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 5
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    iget-object v6, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v5, v10

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v4, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1, v2, v3, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 8
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomAssistWindowSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$3;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v6, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 11
    :cond_1
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    .line 12
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    .line 13
    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    .line 14
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 17
    :cond_2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;Z)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 19
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v4, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v1, v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 21
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 22
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v3, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {v1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 24
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v4, 0x41400000    # 12.0f

    iget v5, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v4

    .line 25
    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    .line 26
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_3

    .line 27
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 28
    invoke-virtual {v1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 29
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    const/high16 v9, 0x41000000    # 8.0f

    mul-float/2addr v7, v9

    .line 30
    iput v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    .line 31
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 32
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f0603af

    .line 33
    invoke-virtual {v10, v11}, Landroid/app/Application;->getColor(I)I

    move-result v10

    invoke-direct {v1, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 34
    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v3

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 35
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v4

    .line 36
    iput v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 38
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 39
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 40
    invoke-virtual {v10, v11}, Landroid/app/Application;->getColor(I)I

    move-result v10

    invoke-direct {v1, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 41
    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v3

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 42
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v7, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v7, v9

    .line 43
    iput v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 44
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 45
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 46
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 47
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 48
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 49
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 50
    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 51
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 52
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    array-length v9, v1

    invoke-static {v1, v0, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 54
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 55
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 56
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 57
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 58
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 59
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 61
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 62
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    .line 63
    :cond_4
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 64
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    .line 65
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 66
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v5, v5

    div-float v12, v5, v4

    int-to-float v1, v1

    div-float v14, v1, v4

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 67
    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOffScreenPrj:[F

    .line 68
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 69
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOffScreenPrj:[F

    const/4 v10, 0x0

    neg-float v11, v12

    neg-float v13, v14

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 70
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 71
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    .line 72
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->loadTexture()V

    .line 73
    :cond_5
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->loadTexture()V

    .line 74
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    iget-object v5, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 75
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->loadTexture()V

    .line 76
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 77
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    iget-object v5, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 78
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 80
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCliNavBarHeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 82
    invoke-virtual {v1, v2, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 83
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {v1, v7, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :cond_6
    const/4 v1, 0x7

    .line 84
    iput v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    .line 85
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 86
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 87
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 88
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener(Z)V

    .line 90
    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 91
    new-instance v2, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-direct {v2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;-><init>()V

    iput-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    .line 92
    invoke-virtual {v8, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 2
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;[F[F)V

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const v0, 0x3cf5c28f    # 0.03f

    cmpg-float p3, p3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    const/16 v2, 0x303

    if-eqz p3, :cond_2

    .line 5
    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 7
    :goto_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 8
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 10
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 11
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onDraw([F[F)V

    .line 12
    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 13
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 14
    :cond_5
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 15
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDraw([F[F)V

    :cond_6
    const/4 p3, -0x1

    .line 16
    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    const/16 v0, 0xb90

    .line 17
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->disable(I)V

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v3, :cond_9

    .line 20
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p0, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;[F[F)V

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 22
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 23
    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 24
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 25
    :cond_8
    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    .line 26
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->disable(I)V

    .line 27
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 28
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 29
    :cond_9
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 30
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDraw([F[F)V

    .line 31
    :cond_a
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    .line 33
    invoke-virtual {p1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p2, p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz p2, :cond_b

    goto :goto_2

    .line 34
    :cond_b
    iget-object p2, p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->savePreviewPixelsIntoBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :cond_c
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDrawFbo([F[F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 2
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDrawFbo([F[F)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p3, :cond_1

    .line 5
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->onDrawFbo([F[F)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 8
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->onDrawFbo([F[F)V

    .line 9
    :cond_2
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 10
    iget-boolean p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    .line 11
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 12
    iget-object p3, p3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyFrame([F[F)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 15
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 16
    :goto_0
    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 17
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz p3, :cond_7

    .line 18
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p3

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p3, p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gez p3, :cond_5

    .line 19
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 20
    :cond_5
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-nez p3, :cond_6

    .line 21
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 22
    :cond_6
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 23
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 24
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 25
    iget-boolean v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawFbo([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPreDraw([F[F[F)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 2
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p3, :cond_0

    .line 5
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onPreDraw([F[F)V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->onPreDraw()Z

    .line 9
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    :cond_3
    move p2, p3

    .line 16
    :cond_4
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRotate(I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewScale()F

    move-result v0

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v5, v4

    mul-float/2addr v5, v0

    invoke-virtual {v2, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v3, 0x2

    .line 15
    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v4

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 19
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 20
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v2, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setDisplayOrientation(I)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    .line 27
    iput p1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_11

    iget v1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 13
    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 14
    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 17
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 20
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_c

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 22
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 24
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 25
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 26
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 27
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 28
    iget-object p2, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 29
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 30
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;Z)V

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 33
    iput v2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    .line 34
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 35
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 37
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 39
    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "<set-?>"

    .line 40
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p2, p1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    .line 44
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 45
    invoke-virtual {v1, p1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    .line 47
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 48
    invoke-virtual {p1, p2}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 49
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    .line 50
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_b

    .line 51
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 52
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 54
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    goto :goto_0

    .line 55
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_1

    .line 57
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 58
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 60
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 61
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 62
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 63
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 64
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_b

    .line 65
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 66
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 67
    :cond_b
    :goto_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 68
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 69
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 71
    :cond_c
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 72
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_10

    .line 73
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 74
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 75
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 76
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    .line 77
    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_3

    .line 78
    :cond_e
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 79
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 80
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 81
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 82
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 83
    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 84
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 85
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_10

    .line 86
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 87
    :cond_10
    :goto_3
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 89
    :cond_11
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 3
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 5
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    .line 7
    monitor-exit p0

    return v2

    .line 8
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v4, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->shouldProcessUiEventStream(FF)Z

    move-result v0

    goto :goto_3

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 13
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 14
    :try_start_4
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0

    move v0, v2

    .line 15
    :goto_3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    .line 16
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 17
    monitor-exit v0

    throw p1

    .line 18
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_6

    monitor-exit p0

    return v2

    .line 19
    :cond_6
    :try_start_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 20
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v1, :cond_7

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    .line 24
    :cond_7
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    :cond_8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 27
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 29
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd(ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 30
    :cond_9
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v5, 0x37

    if-eq p1, v5, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 12
    invoke-virtual {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p1

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 18
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewFinderType:I

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 20
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewFinderType:I

    .line 21
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x3

    .line 27
    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 28
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 29
    invoke-virtual {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_1
    const-string p1, "MODE"

    .line 32
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MODE_DIRECTION"

    .line 33
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 34
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "USE_CASE"

    .line 35
    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "SWITCH_CASE"

    .line 36
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "DUAL_CAPTURE_LAYOUT_TYPE"

    .line 37
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 40
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :pswitch_2
    const-string p1, "MODE"

    .line 41
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MODE_DIRECTION"

    .line 42
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "USE_CASE"

    .line 44
    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "SWITCH_CASE"

    .line 45
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_CAMERA_GROUP:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "DUAL_CAPTURE_CAMERA_GROUP_TYPE"

    .line 46
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 48
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 49
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 51
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onZoomCompleted()V
    .locals 0

    return-void
.end method

.method public onZoomStateChange(Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;FFLcom/motorola/camera/settings/CameraType;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    const/high16 p2, 0x42b40000    # 90.0f

    .line 8
    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr p4, p2

    mul-float/2addr p4, p3

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    int-to-float p2, p2

    mul-float/2addr p4, p2

    float-to-int p2, p4

    .line 9
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final declared-synchronized previewModeChange(IIIZZZ)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    .line 2
    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    .line 3
    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 4
    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 5
    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    .line 6
    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 7
    iput-boolean p6, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 25

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Lcom/motorola/camera/PreviewDiff$Action;->FADE:Lcom/motorola/camera/PreviewDiff$Action;

    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    if-nez v2, :cond_c

    .line 2
    :goto_0
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/PreviewChange;

    .line 4
    iget-boolean v5, v2, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    if-eqz v5, :cond_3

    .line 5
    iget-boolean v2, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 6
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/PreviewDiff;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 8
    iget-object v5, v5, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    if-ne v5, v1, :cond_1

    move v5, v13

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    if-eqz v5, :cond_2

    .line 9
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 10
    iput-boolean v13, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_6

    .line 11
    :cond_2
    new-instance v5, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v5}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    .line 12
    iput-object v1, v5, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 13
    iput-boolean v2, v5, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 14
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 16
    iput-boolean v13, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_6

    .line 17
    :cond_3
    iget-boolean v5, v2, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    if-eqz v5, :cond_4

    .line 18
    iget v5, v2, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    iget-boolean v2, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 19
    new-instance v6, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v6}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    .line 20
    sget-object v7, Lcom/motorola/camera/PreviewDiff$Action;->ZOOM:Lcom/motorola/camera/PreviewDiff$Action;

    iput-object v7, v6, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 21
    iput-boolean v2, v6, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 22
    iput v5, v6, Lcom/motorola/camera/PreviewDiff;->mZoomScale:F

    .line 23
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 25
    iput-boolean v13, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_6

    .line 26
    :cond_4
    iget v5, v2, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget v6, v2, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v7, v2, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iget-boolean v8, v2, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iget-boolean v9, v2, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iget-boolean v2, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 27
    sget-object v10, Lcom/motorola/camera/PreviewDiff$Action;->NONE:Lcom/motorola/camera/PreviewDiff$Action;

    sget-object v11, Lcom/motorola/camera/PreviewDiff$Action;->CROP:Lcom/motorola/camera/PreviewDiff$Action;

    if-eqz v8, :cond_5

    .line 28
    invoke-virtual {v12, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v7

    goto :goto_4

    .line 30
    :cond_5
    iget-object v8, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 31
    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 32
    iget-object v8, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 33
    iget v14, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v8, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    cmpl-float v15, v14, v8

    if-lez v15, :cond_6

    div-float/2addr v14, v8

    goto :goto_3

    :cond_6
    div-float v14, v8, v14

    .line 34
    :goto_3
    iget-object v8, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 35
    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v8

    .line 36
    invoke-static {v6, v7, v14, v9, v8}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v7

    .line 37
    :goto_4
    iget-object v8, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 38
    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    .line 39
    new-instance v9, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v9}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    .line 40
    iget-object v14, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v14

    .line 41
    sget-object v15, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 42
    iget-boolean v15, v15, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v15, :cond_9

    .line 43
    iput-object v11, v9, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 44
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 45
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 46
    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v8, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v5, v6, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 47
    :cond_7
    new-instance v6, Landroid/graphics/RectF;

    iget v8, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v10, v8

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v11, v5

    invoke-direct {v6, v10, v11, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v9, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 48
    iget-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    iget-object v8, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v8

    div-float/2addr v10, v7

    float-to-int v10, v10

    invoke-direct {v6, v8, v10}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-interface {v14, v5, v6}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object v5

    .line 49
    iget-object v5, v5, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 50
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 51
    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v8, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v5, v6, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 52
    :cond_8
    new-instance v6, Landroid/graphics/RectF;

    iget v8, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v10, v8

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v11, v5

    invoke-direct {v6, v10, v11, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v9, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    goto :goto_5

    .line 53
    :cond_9
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 54
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 55
    check-cast v14, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewUnder()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 56
    iput-object v10, v9, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    goto :goto_5

    .line 57
    :cond_a
    invoke-virtual {v12, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getScissorRect(FI)Landroid/graphics/RectF;

    move-result-object v5

    iput-object v5, v9, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {v12, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getScissorRect(FI)Landroid/graphics/RectF;

    move-result-object v5

    iput-object v5, v9, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    .line 59
    iget-object v6, v9, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 60
    iput-object v10, v9, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    goto :goto_5

    .line 61
    :cond_b
    iput-object v11, v9, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    .line 62
    :goto_5
    iput v7, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    .line 63
    iput-boolean v2, v9, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    .line 64
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 66
    iput-boolean v13, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 67
    :goto_6
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 68
    :cond_c
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v5, 0x3

    if-nez v2, :cond_d

    .line 69
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewDiff;

    .line 70
    iget-object v2, v2, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    if-ne v2, v1, :cond_d

    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 71
    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 72
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 73
    :cond_d
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v13}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 74
    :cond_e
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v14, 0x6

    invoke-virtual {v1, v14}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 75
    :cond_f
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 76
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/PreviewDiff;

    .line 77
    iget-object v2, v1, Lcom/motorola/camera/PreviewDiff;->action:Lcom/motorola/camera/PreviewDiff$Action;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_16

    if-eq v2, v13, :cond_12

    const/4 v4, 0x2

    if-eq v2, v4, :cond_11

    if-eq v2, v5, :cond_10

    goto/16 :goto_a

    .line 78
    :cond_10
    iget v7, v1, Lcom/motorola/camera/PreviewDiff;->mZoomScale:F

    new-instance v6, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v12, v1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;)V

    .line 79
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 80
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v7

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/Runnable;)V

    const-wide/16 v16, 0x64

    const/16 v21, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x2

    move-object v14, v8

    move/from16 v19, v7

    invoke-direct/range {v14 .. v21}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 81
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 82
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v8, v13}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_a

    .line 83
    :cond_11
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v15, v12, v2, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/textures/Texture;F)V

    const-wide/16 v16, 0xc6

    const v18, 0x3f4ccccd    # 0.8f

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x2

    move-object v14, v1

    invoke-direct/range {v14 .. v21}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-array v0, v13, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 84
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    aput-object v2, v0, v3

    iget v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 85
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 86
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 87
    iput-boolean v13, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 88
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 89
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 91
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 93
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 94
    :cond_12
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 95
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 96
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 97
    iget-object v0, v1, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, v1, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 99
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v11, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;)V

    .line 100
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    .line 101
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v6, v0

    .line 102
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 103
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    .line 104
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_14

    .line 105
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    goto :goto_7

    :cond_13
    move v9, v3

    goto :goto_8

    :cond_14
    :goto_7
    move v9, v13

    :goto_8
    if-eqz v9, :cond_15

    .line 106
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    .line 107
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v3

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 109
    iget-object v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move v15, v0

    goto :goto_9

    :cond_15
    move v15, v4

    .line 110
    :goto_9
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v16

    .line 111
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v18, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v3, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v6

    move v6, v8

    move-object v8, v7

    move v7, v9

    move-object v9, v8

    move v8, v15

    move-object v15, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v19, 0x64

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 112
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v1, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v15, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 113
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_a

    .line 114
    :cond_16
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 115
    iget-object v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 116
    iget-boolean v2, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v2, :cond_17

    .line 117
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 118
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 119
    :cond_17
    iget-boolean v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v1, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    if-eqz v0, :cond_18

    .line 120
    iput-boolean v3, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 121
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 122
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 123
    :cond_18
    :goto_a
    iget-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 124
    iput-boolean v13, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 125
    :cond_19
    iget-boolean v0, v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    invoke-virtual {v12, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    return-void
.end method

.method public final declared-synchronized registerListener(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

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
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 13
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 14
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 15
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 16
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerZoomChangeListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final resetBlurTex()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 12
    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_3
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v3, 0x3

    .line 16
    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 19
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    .line 20
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 21
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    return-void
.end method

.method public final declared-synchronized setCameraClosing(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_0

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_1

    .line 10
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 11
    :try_start_3
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 13
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_2

    .line 14
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 15
    :try_start_5
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 16
    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    .line 17
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setClosing(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 18
    :cond_3
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCameraView(Z)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 5
    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 7
    :goto_3
    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 8
    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCameraView(ZZ)V
    .locals 5

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 11
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v1, :cond_7

    if-nez p1, :cond_5

    .line 17
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_6

    if-nez v0, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    move p1, v2

    goto :goto_5

    :cond_8
    move p1, v3

    .line 20
    :goto_5
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    .line 22
    :goto_6
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    :goto_7
    :try_start_1
    const-string p1, "CameraPreview"

    const-string p2, "calling setCameraView but textures are not initialized"

    .line 25
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCaptureType$enumunboxing$(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setSubPreviewVisibility(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->RESTORE_ALPHA_FOR_GALLERY_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-object/from16 v16, v2

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->handleHDR10ModeState(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    move-object/from16 v17, v5

    .line 4
    :try_start_1
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v19, v3

    const/4 v3, 0x1

    if-eqz v18, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v5, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->init()Z

    .line 7
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->registerListener(Z)V

    .line 9
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 11
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateToggleResource()V

    goto/16 :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v5, v10}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 15
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomAssistWindowSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerZoomChangeListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 18
    :cond_4
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 19
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 20
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingSegments()[F

    move-result-object v3

    const/4 v5, 0x2

    .line 21
    aget v3, v3, v5

    float-to-int v3, v3

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    goto/16 :goto_0

    .line 22
    :cond_5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 23
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 24
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_3

    .line 25
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeSmileCaptureCallback()V

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeGestureCaptureCallback()V

    .line 29
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v13}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 31
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 33
    :cond_7
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v3, :cond_8

    .line 34
    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    :cond_8
    const/4 v3, 0x0

    .line 35
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 36
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v5, :cond_10

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->registerListener(Z)V

    goto/16 :goto_0

    .line 37
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 38
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 39
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 40
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 41
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_2

    .line 42
    :cond_a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 43
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_1

    .line 44
    :cond_b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto :goto_0

    .line 46
    :cond_c
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    goto :goto_0

    .line 48
    :cond_d
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 49
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v3, :cond_e

    const/4 v3, 0x1

    .line 50
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 51
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 52
    :cond_e
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto :goto_0

    .line 54
    :cond_f
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 55
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 56
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_10
    :goto_0
    move-object/from16 v18, v10

    goto :goto_4

    .line 58
    :cond_11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v3

    .line 59
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v5, v14}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    move-object/from16 v18, v10

    const/4 v5, 0x2

    new-array v10, v5, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v15, v10, v5

    const/4 v5, 0x1

    aput-object v11, v10, v5

    .line 60
    invoke-static {v3, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 61
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_12

    .line 62
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 63
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    goto :goto_4

    :cond_13
    :goto_2
    move-object/from16 v18, v10

    const/4 v3, 0x0

    .line 64
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    goto :goto_4

    :cond_14
    :goto_3
    move-object/from16 v18, v10

    const/4 v3, 0x7

    .line 65
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 67
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->onCaptureFinished()V

    .line 68
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v9}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    .line 69
    :cond_15
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 70
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 71
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    .line 72
    :cond_16
    :goto_4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 74
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    invoke-virtual {v2, v3, v9}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 76
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_7

    .line 77
    :cond_17
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 78
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v14}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->storePreviewSize()V

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    goto/16 :goto_7

    .line 82
    :cond_18
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    .line 83
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    goto/16 :goto_7

    .line 84
    :cond_19
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 85
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto/16 :goto_b

    .line 86
    :cond_1a
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 87
    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_5

    :cond_1b
    move-object/from16 v20, v3

    goto :goto_6

    .line 88
    :cond_1c
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v20, v3

    const/4 v10, 0x4

    new-array v3, v10, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v10, 0x1

    aput-object v12, v3, v10

    const/4 v10, 0x2

    aput-object v7, v3, v10

    const/4 v10, 0x3

    aput-object v6, v3, v10

    invoke-static {v9, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 89
    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 91
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v14}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    .line 92
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto/16 :goto_7

    .line 93
    :cond_1d
    :goto_6
    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v5, 0x2

    new-array v8, v5, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v5, 0x0

    aput-object v15, v8, v5

    const/4 v5, 0x1

    aput-object v11, v8, v5

    invoke-static {v3, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v2

    if-eq v2, v15, :cond_1e

    if-ne v2, v11, :cond_1f

    .line 96
    :cond_1e
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_1f
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    .line 98
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 99
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto/16 :goto_7

    :cond_20
    move-object/from16 v3, v19

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v4

    if-nez v4, :cond_42

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 101
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 102
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 103
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 104
    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto/16 :goto_a

    .line 105
    :cond_21
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ON_UP"

    .line 107
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 108
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getVisibleTimestampAt(J)J

    move-result-wide v3

    const-string v5, "CAPTURE_TIMESTAMP"

    .line 109
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v3, 0x1

    .line 110
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    const-string v3, "CAPTURE_TRIGGER"

    .line 111
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 112
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v2, v3, :cond_2d

    .line 113
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 114
    :cond_22
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x3

    .line 115
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_7

    .line 117
    :cond_23
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v2, 0x4

    .line 118
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCaptureType$enumunboxing$(I)V

    goto/16 :goto_7

    .line 119
    :cond_24
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 120
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_7

    .line 122
    :cond_25
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    .line 123
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_7

    .line 124
    :cond_26
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFadeForGallery()V

    goto :goto_7

    .line 126
    :cond_27
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 127
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v13}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_7

    .line 128
    :cond_28
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_2b

    .line 129
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 130
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 131
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_29

    .line 132
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    .line 133
    :cond_29
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_2a

    .line 134
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    .line 135
    :cond_2a
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v13}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 137
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 138
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    goto :goto_7

    .line 139
    :cond_2b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    goto :goto_7

    .line 141
    :cond_2c
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 142
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 143
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_2d
    :goto_7
    move-object/from16 v5, v17

    goto/16 :goto_c

    .line 144
    :cond_2e
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_VSTAB_STOP_DETECTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 145
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    move-object/from16 v5, v17

    invoke-virtual {v2, v5}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto/16 :goto_c

    :cond_2f
    move-object/from16 v5, v17

    .line 146
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 147
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_30

    .line 148
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    .line 149
    :cond_30
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_31

    .line 150
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    .line 151
    :cond_31
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v2, :cond_49

    .line 152
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto/16 :goto_c

    .line 153
    :cond_32
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 154
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 155
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->clearMeisheEffects()V

    .line 158
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->deinit()V

    goto/16 :goto_c

    .line 159
    :cond_33
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 160
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v7, v3, v4

    const/4 v4, 0x2

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 162
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_34

    .line 163
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_34
    const/4 v2, 0x0

    .line 164
    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 165
    :cond_35
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyPreviewFrame(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 167
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    move-object/from16 v4, v16

    invoke-virtual {v2, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    .line 168
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v4

    .line 170
    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v4, v7, :cond_37

    const/16 v4, 0x3e8

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    goto :goto_8

    :cond_37
    const-string v4, "SRC_MODE"

    .line 171
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    :goto_8
    const-string v4, "MODE"

    const/4 v7, -0x1

    .line 172
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v2, v7, :cond_38

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SRC_MODE"

    .line 174
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    .line 175
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v2

    if-eq v2, v15, :cond_39

    if-ne v2, v6, :cond_3b

    .line 176
    :cond_39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v2, v15, :cond_3b

    const/16 v2, 0x12

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3a

    .line 177
    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    goto :goto_9

    :cond_3a
    if-ne v3, v2, :cond_3b

    .line 178
    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    .line 179
    :cond_3b
    :goto_9
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    .line 180
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_c

    :cond_3c
    move-object/from16 v4, v16

    .line 181
    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v2, :cond_3d

    .line 183
    monitor-exit p0

    return-void

    .line 184
    :cond_3d
    :try_start_2
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v6, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v3, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/ChangeEvent;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 185
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_3e
    move-object/from16 v2, v20

    .line 186
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 187
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 188
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V

    goto/16 :goto_c

    :cond_3f
    const-string v2, "CameraPreview"

    const-string v3, "applyPreviewChange error!"

    .line 189
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 190
    :cond_40
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 191
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 192
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    .line 193
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_c

    .line 194
    :cond_41
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_42
    :goto_a
    move-object/from16 v5, v17

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v4

    if-ne v4, v15, :cond_43

    .line 196
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v6, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_43
    const/4 v4, 0x1

    .line 197
    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v4

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v6

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "OPEN_GALLERY_CANCEL"

    .line 201
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v4, :cond_44

    if-eq v4, v2, :cond_44

    .line 202
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v6, v2, :cond_45

    :cond_44
    if-eqz v7, :cond_46

    .line 203
    :cond_45
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 204
    :cond_46
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    .line 205
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_49

    .line 206
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    goto :goto_c

    :cond_47
    :goto_b
    move-object/from16 v5, v17

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->clearMeisheEffects()V

    .line 210
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 211
    :cond_49
    :goto_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 212
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 213
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 214
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 215
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 216
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 217
    :cond_4a
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "CAPTURE_TRIGGER"

    .line 219
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    .line 220
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v0, v2, :cond_4b

    .line 221
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 222
    :cond_4b
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :cond_4c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized storePreviewSize()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unloadTextures()V
    .locals 6

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

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    .line 7
    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->shutterClickListener:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 10
    aput-object v3, v1, v2

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->unloadTexture()V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->unloadTexture()V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->unloadTexture()V

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 25
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 26
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->switchCameraInPIPLayout(Landroid/os/Bundle;)Z

    move-result p1

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateViewfinder()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 5
    :goto_1
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    .line 8
    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setDefaultVerticesData()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setDefaultVerticesData()V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->resetPosition()V

    :cond_5
    :goto_3
    return-void
.end method
