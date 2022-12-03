.class public final Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "HoldStillComponent.kt"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final animationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mDensity:F

.field public mEnabledFastCaptureUITimer:Z

.field public final mFastCaptureUIRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->animationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized enableHoldStill()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1200f5

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1200f4

    .line 7
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstance().getString(\u2026string.dialog_hold_still)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    const/4 v2, 0x4

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 12
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x42000000    # 32.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    :goto_1
    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 7
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 9
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    const-string v0, "StateKeyCollectionBuilde\u2026\n                .build()"

    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HoldStillComponent"

    return-object p0
.end method

.method public final getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    invoke-direct {p0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

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

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    const/high16 v2, 0x42480000    # 50.0f

    .line 5
    iget v6, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v6, v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42400000    # 48.0f

    .line 6
    iget v6, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v6, v2

    .line 7
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getTextSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    cmpl-float v7, v2, v6

    if-lez v7, :cond_4

    move v6, v2

    .line 11
    :cond_4
    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 12
    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v5

    add-float/2addr v2, v6

    .line 13
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v6

    .line 14
    new-instance v7, Landroid/graphics/Rect;

    .line 15
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    iget-object v8, v8, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 17
    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 18
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 19
    invoke-direct {v8, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 20
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 21
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_7

    if-eq p0, v4, :cond_9

    const/16 v4, 0xb4

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    goto :goto_1

    :cond_5
    neg-float p0, v2

    move v2, p0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    neg-float v0, v2

    goto :goto_1

    .line 22
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    .line 23
    invoke-static {v6, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float v0, p0, v2

    :goto_1
    move v2, v1

    .line 24
    :cond_9
    :goto_2
    invoke-virtual {v8, v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-object v8
.end method

.method public declared-synchronized loadTextures()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f1200f4

    .line 4
    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getInstance().getString(\u2026string.dialog_hold_still)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 8
    iget v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    .line 9
    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    .line 11
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x42000000    # 32.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mDensity:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 15
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_1
    :goto_0
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
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->animationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-ne p0, p2, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method public onRotate(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->getTextPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
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

    :try_start_0
    const-string v0, "changeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x18

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x20

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v2

    .line 13
    invoke-static {v0, v2}, Lcom/motorola/camera/IqConfigManager;->isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    move v1, v3

    :cond_6
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->enableHoldStill()V

    .line 15
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 21
    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez p1, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120117

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    if-eqz v0, :cond_e

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    goto :goto_4

    .line 33
    :cond_b
    :goto_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    if-eqz v0, :cond_c

    .line 34
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 35
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 36
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mFastCaptureUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    .line 39
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_e
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
