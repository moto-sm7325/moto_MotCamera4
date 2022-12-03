.class public Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "PanoUIComponent.java"


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mCaptureColor:I

.field public mCapturing:Z

.field public mDirection:I

.field public mDirectionDeepTrans:F

.field public final mIdleColor:I

.field public mInitPanoCirlce:Z

.field public mMovingCircleHorTexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mPanoCircleExceed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoGuideLineHorTexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoHasPlayAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

.field public mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPlayTransAnim:Z

.field public mPlayTransForWrongDirection:Z

.field public mPreTrans:F

.field public mProgressPadding:F

.field public mReversing:Z

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mUpdateColor:Z

.field public final mWarningColor:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    .line 14
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    .line 16
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    .line 17
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 19
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    .line 20
    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 21
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    .line 22
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f0602fb

    .line 23
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 24
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    .line 25
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0603ba

    .line 26
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 27
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    return-void
.end method


# virtual methods
.method public final animateArrowIcon(I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-eq v1, v11, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-float v1, v2

    .line 4
    invoke-virtual {v8, v3, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v8, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v8, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_3
    neg-float v1, v2

    .line 7
    invoke-virtual {v8, v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 8
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v14, 0x0

    const-wide/16 v15, 0x190

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x2

    const/16 v20, 0x0

    const/16 v19, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 9
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    const/4 v4, 0x0

    const-wide/16 v5, 0xc8

    const/4 v10, 0x0

    const/4 v9, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 12
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    invoke-direct {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;I)V

    .line 13
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 14
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    new-array v2, v12, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 16
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v4, v2, v5

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 17
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 18
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const-wide/16 v15, 0x64

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 19
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 20
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 21
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v20, 0x0

    const-wide/16 v21, 0x64

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 22
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 23
    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$3;

    invoke-direct {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;I)V

    .line 25
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 26
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 27
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 28
    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 29
    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    new-array v1, v12, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v2, v1, v5

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 31
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v4, v11}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkExceedBoundary(ILcom/google/gson/FieldAttributes;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/FieldAttributes;->centerX()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->centerY()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    const v2, 0x3d4ccccd    # 0.05f

    :goto_0
    mul-float/2addr p3, v2

    const/16 v2, 0x10e

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 5
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_c

    return v3

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    return v3

    :cond_3
    if-ne p1, v3, :cond_6

    .line 8
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    return v3

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_c

    return v3

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 11
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_8

    if-ne p0, v2, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    return v3

    .line 13
    :cond_8
    :goto_3
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_c

    return v3

    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 14
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_b

    if-ne p0, v2, :cond_a

    goto :goto_4

    .line 15
    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_c

    return v3

    .line 16
    :cond_b
    :goto_4
    invoke-virtual {p2}, Lcom/google/gson/FieldAttributes;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    return v3

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final getPaddingBottom()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42900000    # 72.0f

    :goto_0
    mul-float/2addr v1, v0

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    .line 5
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 7
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v3

    div-float/2addr v1, v4

    sub-float/2addr p0, v1

    const/4 v0, 0x0

    cmpl-float v1, v2, p0

    if-ltz v1, :cond_1

    sub-float v0, v2, p0

    :cond_1
    div-float/2addr v0, v4

    return v0
.end method

.method public final getProgessBarVerHeight()I
    .locals 7

    .line 1
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 4
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    .line 8
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    .line 9
    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 11
    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    move-object v1, v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    .line 13
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    div-float v0, v4, v0

    :cond_1
    const v3, 0x3cf5c28f    # 0.03f

    sub-float v3, v0, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    div-float v4, v1, v0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 19
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 20
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    .line 21
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 22
    iget-object v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v4, v5, :cond_3

    const/high16 v4, 0x42700000    # 60.0f

    goto :goto_0

    :cond_3
    const/high16 v4, 0x42900000    # 72.0f

    :goto_0
    mul-float/2addr v4, v3

    .line 23
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 24
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    .line 25
    invoke-interface {v6}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr p0, v5

    div-float/2addr v4, v2

    sub-float/2addr p0, v4

    const/4 v2, 0x0

    cmpl-float v3, v1, p0

    if-ltz v3, :cond_4

    sub-float v2, v1, p0

    :cond_4
    sub-float/2addr v0, v2

    float-to-int p0, v0

    return p0
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

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoUIComponent"

    return-object p0
.end method

.method public final getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/16 v2, 0x10e

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    if-eq p1, v4, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 8
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 11
    :cond_5
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 13
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 16
    :cond_8
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 18
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_a

    goto :goto_3

    .line 19
    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 21
    :cond_b
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_4
    return-object v0
.end method

.method public loadTextures()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    .line 4
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v5, 0x5

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 5
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 6
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 8
    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v6, 0x1

    .line 12
    iput v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mAlphaChange:I

    .line 13
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 15
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v2, v7, v8, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 16
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 17
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 19
    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 20
    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 21
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 23
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v2, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 24
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 25
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 26
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 27
    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 28
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 29
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->loadTexture()V

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    .line 31
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v3, 0x7f08015a

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 32
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return v6
.end method

.method public final needReversing(FFII)Z
    .locals 3

    const/16 p0, 0x10e

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    const/4 v2, 0x3

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p4, p1, p2

    if-gez p4, :cond_1

    if-eqz p3, :cond_4

    if-ne p3, p0, :cond_5

    goto :goto_1

    :cond_1
    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_4

    goto :goto_2

    :cond_3
    :goto_0
    cmpg-float p4, p1, p2

    if-gez p4, :cond_6

    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :cond_5
    :goto_2
    move v1, v0

    goto :goto_3

    :cond_6
    cmpl-float p1, p1, p2

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_4

    if-ne p3, p0, :cond_5

    goto :goto_1

    :goto_3
    return v1
.end method

.method public final needUpdateColor(FFIIFI)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    return p0

    :cond_0
    if-eqz p3, :cond_2

    const/16 p6, 0x10e

    if-ne p3, p6, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    :goto_0
    sub-float/2addr p2, p1

    float-to-int p1, p2

    :goto_1
    const/4 p2, 0x0

    const/high16 p3, 0x3e800000    # 0.25f

    const/high16 p6, 0x3f000000    # 0.5f

    if-eqz p4, :cond_4

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, -0x1

    if-le p1, p4, :cond_6

    sub-float/2addr p5, p6

    .line 1
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    goto :goto_3

    :cond_4
    :goto_2
    if-ge p1, p0, :cond_6

    sub-float/2addr p5, p6

    .line 2
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    goto :goto_3

    :cond_5
    move p0, p2

    :cond_6
    :goto_3
    return p0
.end method

.method public onDraw([F[F[F)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 2
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 4
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    .line 6
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 8
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 9
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 11
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 13
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 14
    iget-boolean v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    goto :goto_1

    .line 15
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()[F

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 16
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onDraw([F[F)V

    :cond_8
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 5
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

.method public onRotate(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1200c0

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void

    .line 12
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final progressCapture(Landroid/os/Bundle;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "status"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "progressX"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "maxWidth"

    .line 4
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "progressY"

    .line 5
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "maxHeight"

    .line 6
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v9, v4

    div-double/2addr v2, v9

    double-to-float v2, v2

    int-to-double v3, v7

    div-double/2addr v5, v3

    double-to-float v3, v5

    .line 7
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    const/16 v9, 0xb4

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v10, 0x10e

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v4, v9, :cond_2

    sub-float v7, v6, v2

    goto :goto_1

    :cond_2
    if-ne v4, v10, :cond_3

    sub-float v7, v6, v3

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v2

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v9, :cond_6

    sub-float v2, v6, v3

    goto :goto_3

    :cond_6
    if-ne v4, v10, :cond_7

    goto :goto_3

    :cond_7
    if-ne v4, v5, :cond_8

    sub-float v2, v6, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v3

    :goto_3
    const-string v3, "direction"

    .line 8
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 10
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v11, 0x42300000    # 44.0f

    mul-float/2addr v4, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v4, v12

    .line 11
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v15

    .line 12
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 13
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 14
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v14, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    if-ne v4, v10, :cond_d

    if-ne v3, v6, :cond_a

    goto :goto_6

    :cond_a
    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    if-ne v3, v12, :cond_c

    goto :goto_5

    :cond_c
    if-ne v3, v14, :cond_15

    goto :goto_4

    :cond_d
    if-ne v4, v5, :cond_11

    if-ne v3, v6, :cond_e

    goto :goto_7

    :cond_e
    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    if-ne v3, v12, :cond_10

    goto :goto_4

    :cond_10
    if-ne v3, v14, :cond_15

    goto :goto_5

    :cond_11
    if-ne v4, v9, :cond_15

    if-ne v3, v6, :cond_12

    :goto_4
    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    if-nez v3, :cond_13

    :goto_5
    move v3, v6

    goto :goto_8

    :cond_13
    if-ne v3, v12, :cond_14

    :goto_6
    move v3, v14

    goto :goto_8

    :cond_14
    if-ne v3, v14, :cond_15

    :goto_7
    move v3, v12

    :cond_15
    :goto_8
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 15
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    if-nez v4, :cond_16

    .line 16
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    .line 17
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    .line 18
    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 19
    :cond_16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v11, v3

    .line 20
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    const/high16 v19, 0x40000000    # 2.0f

    if-nez v3, :cond_1e

    .line 21
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 22
    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    const/high16 v20, 0x41a00000    # 20.0f

    mul-float v12, v12, v20

    .line 23
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v21, 0x41000000    # 8.0f

    mul-float v9, v9, v21

    .line 24
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v22, 0x40800000    # 4.0f

    mul-float v5, v5, v22

    .line 25
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    mul-float v10, v10, v19

    .line 26
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 27
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    if-eqz v3, :cond_18

    if-ne v3, v6, :cond_17

    goto :goto_9

    :cond_17
    const/4 v3, 0x0

    goto :goto_a

    :cond_18
    :goto_9
    move v3, v6

    :goto_a
    const/high16 v4, 0x42200000    # 40.0f

    .line 30
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v4

    if-eqz v3, :cond_19

    .line 31
    sget v3, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    int-to-float v3, v3

    .line 32
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 33
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v25, 0x41800000    # 16.0f

    goto :goto_b

    .line 34
    :cond_19
    sget v3, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v3, v3

    .line 35
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 36
    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v25, 0x42000000    # 32.0f

    :goto_b
    mul-float v4, v4, v25

    sub-float/2addr v3, v4

    add-float/2addr v3, v6

    const/4 v4, 0x0

    .line 37
    :goto_c
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 38
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    const/high16 v23, 0x42500000    # 52.0f

    mul-float v6, v6, v23

    div-float v6, v3, v6

    .line 39
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ge v4, v6, :cond_1a

    .line 40
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v25, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move/from16 v26, v8

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-direct {v6, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 41
    monitor-enter v6

    .line 42
    monitor-exit v6

    .line 43
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 44
    iput v3, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 45
    invoke-virtual {v6, v8, v8, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    const/high16 v3, -0x40800000    # -1.0f

    .line 46
    invoke-virtual {v6, v8, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    const/4 v8, 0x0

    .line 47
    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 48
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v3, v6, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 50
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 51
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    .line 52
    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 53
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float v6, v6, v19

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 55
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v25

    move/from16 v8, v26

    goto :goto_c

    :cond_1a
    move/from16 v26, v8

    const/4 v8, 0x0

    .line 58
    :goto_d
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_1c

    .line 59
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v8, :cond_1b

    .line 60
    invoke-virtual {v3, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v4, v12, v19

    .line 61
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 62
    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    goto :goto_e

    .line 63
    :cond_1b
    invoke-virtual {v3, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v4, v9, v19

    .line 64
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 65
    invoke-virtual {v3, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 66
    :goto_e
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    .line 67
    invoke-virtual {v3, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 68
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v4, 0x0

    .line 69
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 70
    :cond_1c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 71
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float v5, v5, v19

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 72
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 73
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v8, 0x0

    .line 74
    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_f

    :cond_1d
    const/4 v8, 0x0

    .line 75
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 76
    invoke-virtual {v0, v11, v15}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setPanoThumbnailTexBackgroundTranslation(FF)V

    .line 77
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 78
    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    goto :goto_10

    :cond_1e
    move v4, v6

    move/from16 v26, v8

    const/4 v8, 0x0

    .line 79
    :goto_10
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const v5, 0x3d4cccd0    # 0.050000012f

    if-eqz v3, :cond_21

    if-ne v3, v4, :cond_1f

    goto :goto_11

    .line 80
    :cond_1f
    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateProgress(F)F

    move-result v3

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v12, v16, v3

    .line 81
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_20

    move/from16 v3, v16

    :cond_20
    move v14, v2

    move v12, v3

    goto :goto_12

    :cond_21
    :goto_11
    const/high16 v16, 0x3f000000    # 0.5f

    .line 82
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateProgress(F)F

    move-result v2

    sub-float v12, v16, v2

    .line 83
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_22

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_22
    move v14, v2

    move v12, v7

    :goto_12
    const-string v2, "preview"

    .line 84
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_27

    .line 85
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v2, 0xb4

    if-eqz v1, :cond_24

    if-ne v1, v2, :cond_23

    goto :goto_13

    .line 86
    :cond_23
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_14

    .line 87
    :cond_24
    :goto_13
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_14
    int-to-float v1, v1

    .line 88
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_26

    if-ne v3, v2, :cond_25

    goto :goto_15

    .line 89
    :cond_25
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_16

    .line 90
    :cond_26
    :goto_15
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_16
    int-to-float v2, v2

    move v10, v1

    move v7, v2

    goto :goto_17

    :cond_27
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 91
    :goto_17
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 92
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 93
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 94
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 95
    check-cast v3, Landroid/util/Size;

    invoke-direct {v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    if-eqz v1, :cond_29

    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    goto :goto_18

    .line 96
    :cond_28
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    .line 97
    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    move v4, v7

    move v2, v10

    move v3, v2

    goto :goto_19

    .line 98
    :cond_29
    :goto_18
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 99
    iget v1, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    move v2, v1

    move v1, v7

    move v3, v1

    move v4, v10

    .line 100
    :goto_19
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 101
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 102
    monitor-enter v5

    .line 103
    :try_start_0
    iput v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    monitor-exit v5

    .line 105
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 106
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 107
    monitor-enter v3

    .line 108
    :try_start_1
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit v3

    .line 110
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 111
    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    .line 112
    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    neg-float v1, v10

    div-float v1, v1, v19

    mul-float v2, v10, v12

    add-float v6, v2, v1

    div-float v18, v10, v19

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v12

    mul-float/2addr v2, v10

    sub-float v5, v18, v2

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v2

    add-float v4, v2, v15

    sub-float/2addr v1, v14

    mul-float v2, v7, v1

    div-float v17, v7, v19

    sub-float v3, v2, v17

    add-float v25, v3, v4

    neg-float v3, v7

    mul-float/2addr v3, v1

    add-float v3, v3, v17

    add-float/2addr v3, v4

    .line 114
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2b

    if-nez v1, :cond_2a

    goto :goto_1a

    :cond_2a
    move v8, v4

    goto :goto_1b

    :cond_2b
    :goto_1a
    const/high16 v1, 0x437a0000    # 250.0f

    .line 115
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 116
    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v8

    mul-float/2addr v8, v1

    sub-float v1, v4, v8

    move v8, v1

    .line 117
    :goto_1b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    move/from16 p1, v3

    int-to-float v3, v1

    sub-float v27, v3, v7

    div-float v27, v27, v19

    div-float v3, v3, v19

    sub-float v3, v3, v27

    mul-float v28, v7, v14

    sub-float v3, v3, v28

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v19

    add-float v1, v1, v27

    add-float/2addr v2, v1

    .line 118
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v27, v4

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move/from16 v28, v5

    if-eqz v1, :cond_35

    const/4 v5, 0x1

    if-eq v1, v5, :cond_32

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2f

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2c

    const/16 v16, 0x0

    goto :goto_22

    :cond_2c
    if-eqz v4, :cond_2e

    const/16 v1, 0x10e

    if-ne v4, v1, :cond_2d

    goto :goto_1c

    :cond_2d
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v14, v1

    if-gez v1, :cond_38

    goto :goto_20

    :cond_2e
    :goto_1c
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v14, v1

    if-ltz v1, :cond_38

    goto :goto_20

    :cond_2f
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v4, :cond_31

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_30

    goto :goto_1d

    :cond_30
    cmpl-float v1, v14, v1

    if-lez v1, :cond_38

    goto :goto_20

    :cond_31
    :goto_1d
    cmpg-float v1, v14, v1

    if-gtz v1, :cond_38

    goto :goto_20

    :cond_32
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v4, :cond_34

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_33

    goto :goto_1e

    :cond_33
    cmpg-float v1, v12, v1

    if-gez v1, :cond_38

    goto :goto_20

    :cond_34
    :goto_1e
    cmpl-float v1, v12, v1

    if-ltz v1, :cond_38

    goto :goto_20

    :cond_35
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v4, :cond_37

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_36

    goto :goto_1f

    :cond_36
    cmpl-float v1, v12, v1

    if-lez v1, :cond_38

    goto :goto_20

    :cond_37
    :goto_1f
    cmpg-float v1, v12, v1

    if-gtz v1, :cond_38

    :goto_20
    const/4 v1, 0x1

    goto :goto_21

    :cond_38
    const/4 v1, 0x0

    :goto_21
    move/from16 v16, v1

    .line 119
    :goto_22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v4, :cond_39

    const/16 v29, 0x1

    goto :goto_23

    :cond_39
    const/16 v29, 0x0

    .line 120
    :goto_23
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v4, 0x42500000    # 52.0f

    mul-float v23, v1, v4

    .line 121
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v13

    .line 122
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v1, v13

    .line 123
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v30, v1

    .line 124
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v1, :cond_5f

    move/from16 v31, v6

    const/4 v6, 0x1

    if-eq v1, v6, :cond_54

    const/4 v6, 0x2

    if-eq v1, v6, :cond_48

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3a

    move/from16 v24, v7

    move/from16 v21, v10

    move/from16 v32, v15

    move/from16 v10, v28

    move/from16 v28, v30

    move-object/from16 v30, v9

    move/from16 v41, v31

    move/from16 v31, v12

    move/from16 v12, v41

    goto/16 :goto_3e

    .line 125
    :cond_3a
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3b

    .line 126
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 127
    :cond_3b
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3c

    .line 128
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 129
    :cond_3c
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 130
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v18, v1

    move/from16 v32, v15

    move/from16 v15, v30

    move-object/from16 v1, p0

    move/from16 p1, v3

    const/high16 v21, -0x40800000    # -1.0f

    move-object/from16 v30, v9

    move v9, v4

    move v4, v6

    move/from16 v6, v28

    move/from16 v28, v15

    move/from16 v15, v21

    move/from16 v21, v10

    move v10, v5

    move/from16 v5, v18

    move/from16 v35, v6

    move/from16 v33, v31

    move v6, v12

    move/from16 v24, v7

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 131
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 132
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 133
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 134
    :cond_3d
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_3e

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_40

    :cond_3e
    if-nez v29, :cond_40

    :cond_3f
    move/from16 v7, v33

    goto :goto_27

    .line 135
    :cond_40
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 136
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_45

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_41

    goto :goto_28

    :cond_41
    const/4 v6, 0x0

    .line 137
    :goto_24
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_3f

    if-eqz v1, :cond_42

    .line 138
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_25

    :cond_42
    move v2, v3

    :goto_25
    neg-float v2, v2

    add-float/2addr v2, v8

    sub-float v2, v2, v17

    add-int/lit8 v4, v6, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v23

    add-float/2addr v5, v2

    .line 139
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v7, v5, v9

    if-lez v7, :cond_43

    .line 140
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v7, v33

    neg-float v5, v7

    .line 141
    invoke-virtual {v2, v5, v9, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_26

    :cond_43
    move/from16 v7, v33

    .line 142
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v6, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v6, v7

    const/high16 v10, -0x40800000    # -1.0f

    .line 143
    invoke-virtual {v2, v6, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_26
    move v6, v4

    move/from16 v33, v7

    const/high16 v15, -0x40800000    # -1.0f

    goto :goto_24

    :cond_44
    :goto_27
    move/from16 v31, v12

    move v12, v7

    goto/16 :goto_38

    :cond_45
    :goto_28
    move/from16 v7, v33

    const/4 v6, 0x0

    .line 144
    :goto_29
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_44

    .line 145
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_46

    .line 146
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2a

    :cond_46
    move v4, v3

    :goto_2a
    neg-float v4, v4

    add-float/2addr v4, v8

    add-float v4, v4, v17

    rsub-int/lit8 v5, v6, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v23

    add-float/2addr v5, v4

    cmpg-float v4, v5, v10

    if-gez v4, :cond_47

    .line 147
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v4, v7

    const/high16 v9, -0x40800000    # -1.0f

    .line 148
    invoke-virtual {v2, v4, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2b

    :cond_47
    const/high16 v9, -0x40800000    # -1.0f

    .line 149
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v4, v7

    .line 150
    invoke-virtual {v2, v4, v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_48
    move/from16 v24, v7

    move/from16 v21, v10

    move/from16 v32, v15

    move/from16 v35, v28

    move/from16 v28, v30

    move/from16 v7, v31

    move v10, v5

    move-object/from16 v30, v9

    move v9, v4

    .line 151
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_49

    .line 152
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 153
    :cond_49
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4a

    .line 154
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 155
    :cond_4a
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 156
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move-object/from16 v1, p0

    move v15, v2

    move v2, v3

    move v3, v15

    move v6, v12

    move/from16 v31, v12

    move v12, v7

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 157
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 158
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 159
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 160
    :cond_4b
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_4c

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_4d

    :cond_4c
    if-nez v29, :cond_4d

    goto/16 :goto_38

    .line 161
    :cond_4d
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 162
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_51

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4e

    goto :goto_2f

    :cond_4e
    const/4 v6, 0x0

    .line 163
    :goto_2c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_5e

    if-eqz v1, :cond_4f

    .line 164
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2d

    :cond_4f
    move v2, v15

    :goto_2d
    neg-float v2, v2

    add-float/2addr v2, v8

    add-float v2, v2, v17

    add-int/lit8 v3, v6, 0x1

    int-to-float v4, v3

    mul-float v4, v4, v23

    sub-float/2addr v2, v4

    .line 165
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpg-float v5, v2, v10

    if-gez v5, :cond_50

    .line 166
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v12

    const/high16 v5, -0x40800000    # -1.0f

    .line 167
    invoke-virtual {v4, v2, v10, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2e

    :cond_50
    const/high16 v5, -0x40800000    # -1.0f

    .line 168
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v6, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v6, v12

    .line 169
    invoke-virtual {v4, v6, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2e
    move v6, v3

    goto :goto_2c

    :cond_51
    :goto_2f
    const/4 v6, 0x0

    .line 170
    :goto_30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_5e

    if-eqz v1, :cond_52

    .line 171
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_31

    :cond_52
    move v2, v15

    :goto_31
    neg-float v2, v2

    add-float/2addr v2, v8

    sub-float v2, v2, v17

    add-int/lit8 v3, v6, 0x1

    int-to-float v4, v3

    mul-float v4, v4, v23

    add-float/2addr v4, v2

    .line 172
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v5, v4, v9

    if-lez v5, :cond_53

    .line 173
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v4, v12

    const/high16 v5, -0x40800000    # -1.0f

    .line 174
    invoke-virtual {v2, v4, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_32

    :cond_53
    const/high16 v5, -0x40800000    # -1.0f

    .line 175
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v6, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v6, v12

    .line 176
    invoke-virtual {v2, v6, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_32
    move v6, v3

    goto :goto_30

    :cond_54
    move/from16 v24, v7

    move/from16 v21, v10

    move/from16 v32, v15

    move/from16 v35, v28

    move/from16 v28, v30

    move-object/from16 v30, v9

    move/from16 v41, v31

    move/from16 v31, v12

    move/from16 v12, v41

    .line 177
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_55

    .line 178
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 179
    :cond_55
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_56

    .line 180
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 181
    :cond_56
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v12, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 182
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move-object/from16 v1, p0

    move/from16 v8, p1

    move v3, v12

    move/from16 v9, v27

    move v6, v14

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 183
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 184
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_57

    .line 185
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 186
    :cond_57
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_58

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_59

    :cond_58
    if-nez v29, :cond_59

    goto :goto_38

    .line 187
    :cond_59
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v9, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 188
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_5c

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_5a

    goto :goto_35

    :cond_5a
    const/4 v6, 0x0

    .line 189
    :goto_33
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_5e

    .line 190
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_5b

    .line 191
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_34

    :cond_5b
    move v3, v12

    :goto_34
    neg-float v3, v3

    add-float v3, v3, v18

    add-int/lit8 v6, v6, 0x1

    int-to-float v4, v6

    mul-float v4, v4, v23

    sub-float/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 192
    invoke-virtual {v2, v3, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_33

    :cond_5c
    :goto_35
    const/4 v6, 0x0

    .line 193
    :goto_36
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_5e

    .line 194
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_5d

    .line 195
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_37

    :cond_5d
    move v3, v12

    :goto_37
    neg-float v3, v3

    sub-float v3, v3, v18

    add-int/lit8 v6, v6, 0x1

    int-to-float v4, v6

    mul-float v4, v4, v23

    add-float/2addr v4, v3

    const/high16 v3, -0x40800000    # -1.0f

    .line 196
    invoke-virtual {v2, v4, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_36

    :cond_5e
    :goto_38
    move/from16 v10, v35

    goto/16 :goto_3e

    :cond_5f
    move/from16 v8, p1

    move/from16 v24, v7

    move/from16 v21, v10

    move/from16 v31, v12

    move/from16 v32, v15

    move/from16 v35, v28

    move/from16 v28, v30

    move v12, v6

    move-object/from16 v30, v9

    move/from16 v9, v27

    .line 197
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    move/from16 v10, v35

    if-nez v2, :cond_60

    .line 198
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 199
    :cond_60
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_61

    .line 200
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 201
    :cond_61
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v10, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 202
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move-object/from16 v1, p0

    move v3, v10

    move v6, v14

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 203
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 204
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_62

    .line 205
    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 206
    :cond_62
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_63

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_64

    :cond_63
    if-nez v29, :cond_64

    goto :goto_3e

    .line 207
    :cond_64
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 208
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_67

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_65

    goto :goto_3b

    :cond_65
    const/4 v6, 0x0

    .line 209
    :goto_39
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_69

    .line 210
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_66

    .line 211
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3a

    :cond_66
    move v5, v10

    :goto_3a
    neg-float v3, v5

    sub-float v3, v3, v18

    add-int/lit8 v6, v6, 0x1

    int-to-float v4, v6

    mul-float v4, v4, v23

    add-float/2addr v4, v3

    const/high16 v3, -0x40800000    # -1.0f

    .line 212
    invoke-virtual {v2, v4, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_39

    :cond_67
    :goto_3b
    const/4 v6, 0x0

    .line 213
    :goto_3c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_69

    .line 214
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_68

    .line 215
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3d

    :cond_68
    move v5, v10

    :goto_3d
    neg-float v3, v5

    add-float v3, v3, v18

    rsub-int/lit8 v4, v6, -0x1

    int-to-float v4, v4

    mul-float v4, v4, v23

    add-float/2addr v4, v3

    const/high16 v3, -0x40800000    # -1.0f

    .line 216
    invoke-virtual {v2, v4, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 217
    :cond_69
    :goto_3e
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 218
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 219
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v1

    mul-float v13, v13, v19

    add-float/2addr v13, v1

    .line 221
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->width()F

    move-result v1

    sub-float/2addr v1, v13

    div-float v1, v1, v19

    .line 222
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/FieldAttributes;->height()F

    move-result v2

    sub-float/2addr v2, v13

    div-float v2, v2, v19

    .line 223
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x10e

    if-eqz v4, :cond_6b

    if-ne v4, v5, :cond_6a

    goto :goto_3f

    :cond_6a
    neg-float v1, v1

    :cond_6b
    :goto_3f
    if-eqz v4, :cond_6d

    if-ne v4, v5, :cond_6c

    goto :goto_40

    :cond_6c
    neg-float v2, v2

    .line 224
    :cond_6d
    :goto_40
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v4, :cond_71

    if-ne v4, v3, :cond_6e

    goto :goto_41

    :cond_6e
    const/4 v5, 0x2

    if-eq v4, v5, :cond_6f

    const/4 v1, 0x3

    if-ne v4, v1, :cond_73

    .line 225
    :cond_6f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/FieldAttributes;->height()F

    move-result v1

    cmpg-float v1, v13, v1

    if-gez v1, :cond_73

    .line 226
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v11, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 227
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_70

    .line 228
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 229
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 230
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v5, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 231
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 232
    invoke-virtual {v1, v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_42

    .line 233
    :cond_70
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 234
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 235
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v5, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 236
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 237
    invoke-virtual {v1, v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_42

    .line 238
    :cond_71
    :goto_41
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/FieldAttributes;->width()F

    move-result v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_73

    .line 239
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v13, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 240
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-ne v2, v3, :cond_72

    .line 241
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 242
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v4, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 243
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 244
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 245
    invoke-virtual {v2, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_42

    .line 246
    :cond_72
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 247
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 248
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 249
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 250
    invoke-virtual {v2, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_73
    :goto_42
    const/4 v6, 0x0

    .line 251
    :goto_43
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_84

    .line 252
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v6, :cond_75

    .line 253
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 254
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 255
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_74

    .line 256
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_44

    .line 257
    :cond_74
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_44

    .line 258
    :cond_75
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    add-int/lit8 v4, v6, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 259
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 260
    :goto_44
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    const/4 v8, 0x0

    if-gt v6, v5, :cond_76

    .line 261
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_45

    :cond_76
    move-object v5, v8

    .line 262
    :goto_45
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v11

    invoke-virtual {v0, v9, v11, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/gson/FieldAttributes;Z)Z

    move-result v9

    .line 263
    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v13

    invoke-virtual {v0, v11, v13, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/gson/FieldAttributes;Z)Z

    move-result v11

    .line 264
    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/gson/FieldAttributes;

    move-result-object v15

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v15, v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/gson/FieldAttributes;Z)Z

    move-result v13

    if-eqz v9, :cond_77

    .line 265
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    goto :goto_46

    .line 266
    :cond_77
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    :goto_46
    if-eqz v11, :cond_78

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v15}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    goto :goto_47

    .line 267
    :cond_78
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    .line 268
    :goto_47
    invoke-virtual {v1, v9, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 269
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    if-ge v6, v9, :cond_79

    .line 270
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v6, :cond_79

    .line 271
    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v9, :cond_79

    .line 272
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_79
    if-eqz v8, :cond_7d

    if-eqz v11, :cond_7a

    .line 273
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    goto :goto_48

    .line 274
    :cond_7a
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    :goto_48
    if-eqz v11, :cond_7b

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    goto :goto_49

    .line 275
    :cond_7b
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 276
    :goto_49
    invoke-virtual {v8, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v11, :cond_7d

    .line 277
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_7c

    .line 278
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4a

    .line 279
    :cond_7c
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_7d
    :goto_4a
    if-eqz v13, :cond_82

    .line 280
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    const/4 v9, 0x4

    .line 281
    invoke-virtual {v4, v9, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 282
    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-eqz v8, :cond_7f

    .line 283
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v1, :cond_7e

    .line 284
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4b

    .line 285
    :cond_7e
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    .line 286
    :cond_7f
    :goto_4b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_83

    if-nez v6, :cond_80

    .line 287
    invoke-virtual {v0, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->scaleAnimMovingCircle(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    goto :goto_4c

    .line 288
    :cond_80
    invoke-virtual {v0, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->scaleAnimMovingCircle(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    :goto_4c
    if-eqz v5, :cond_81

    .line 289
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 290
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$5;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const/16 v39, 0x2

    const-wide/16 v35, 0x64

    const/high16 v37, 0x3f800000    # 1.0f

    const/high16 v38, 0x40000000    # 2.0f

    const/16 v40, 0x0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v40}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    new-array v2, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v5, v2, v7

    .line 291
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 292
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 293
    :cond_81
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 294
    :cond_82
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_83

    .line 295
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 296
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_83
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_43

    :cond_84
    const/4 v7, 0x0

    .line 297
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v1, :cond_85

    .line 298
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    goto :goto_4e

    .line 299
    :cond_85
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 300
    :goto_4e
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v2, v28

    if-eq v2, v1, :cond_86

    if-ne v1, v3, :cond_86

    .line 301
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    :cond_86
    if-eqz v1, :cond_87

    .line 302
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    if-nez v1, :cond_87

    .line 303
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    .line 304
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    .line 305
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    .line 306
    :cond_87
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    if-eqz v1, :cond_8c

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v2, v21, v1

    .line 307
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v1, v1, v24

    .line 308
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 309
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v4, 0xb4

    if-eqz v3, :cond_89

    if-ne v3, v4, :cond_88

    goto :goto_4f

    :cond_88
    move v5, v1

    goto :goto_50

    :cond_89
    :goto_4f
    move v5, v2

    :goto_50
    if-eqz v3, :cond_8b

    if-ne v3, v4, :cond_8a

    goto :goto_51

    :cond_8a
    move v3, v2

    goto :goto_52

    :cond_8b
    :goto_51
    move v3, v1

    :goto_52
    move-object/from16 v6, v30

    .line 310
    invoke-static {v6, v5, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 311
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    int-to-float v2, v2

    int-to-float v1, v1

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v4, v26

    move v7, v10

    move v8, v12

    move/from16 v9, v25

    move v10, v12

    move/from16 v11, v31

    move v12, v14

    move/from16 v13, v16

    move v14, v15

    move/from16 v18, v32

    move v15, v2

    move/from16 v16, v1

    move/from16 v17, v0

    invoke-virtual/range {v3 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFFFZZFFZF)V

    goto :goto_53

    :cond_8c
    move-object/from16 v6, v30

    move/from16 v18, v32

    .line 312
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v4, v26

    move v7, v10

    move v8, v12

    move/from16 v9, v25

    move/from16 v22, v21

    move v10, v12

    move/from16 v11, v31

    move v12, v14

    move/from16 v13, v16

    move v14, v1

    move/from16 v15, v22

    move/from16 v16, v24

    move/from16 v17, v0

    invoke-virtual/range {v3 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFFFZZFFZF)V

    :goto_53
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 313
    monitor-exit v3

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 314
    monitor-exit v5

    throw v1
.end method

.method public final resetDirIconPos(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    const/16 v3, 0x10e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    const/4 v2, 0x2

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v8, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 8
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_4

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 12
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_4

    .line 13
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 17
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 18
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 19
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 20
    invoke-virtual {p1, v6, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v8, v6, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    goto :goto_4

    .line 22
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v6, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 25
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 26
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v3, :cond_a

    goto :goto_3

    .line 27
    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 28
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v6, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_4
    return-void
.end method

.method public final scaleAnimMovingCircle(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "PanoUIComponent"

    const-string v3, "enter into scaleAnim"

    .line 1
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move v8, v4

    :goto_0
    const/high16 v13, 0x40a00000    # 5.0f

    if-eqz p2, :cond_1

    move v9, v13

    goto :goto_1

    :cond_1
    move v9, v12

    :goto_1
    const/16 v20, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    const/4 v10, 0x2

    move-object v4, v2

    .line 4
    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 5
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    const/4 v15, 0x0

    const-wide/16 v16, 0x64

    if-eqz p2, :cond_2

    move/from16 v18, v13

    goto :goto_2

    :cond_2
    move/from16 v18, v12

    :goto_2
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v14, v4

    .line 8
    invoke-direct/range {v14 .. v21}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 9
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    iput-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    invoke-direct {v6, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;I)V

    .line 12
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v1, v2, v7

    .line 14
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final setPanoThumbnailTexBackgroundTranslation(FF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, p2

    .line 4
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/16 v2, 0x10e

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    .line 6
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v0, v3

    add-float/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 7
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 8
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_5

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_5

    .line 13
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 18
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 19
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-nez p1, :cond_9

    .line 20
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 22
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 23
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 24
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 25
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 27
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 28
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 29
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_5
    return-void
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 13
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
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v8

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result p1

    add-float/2addr p1, v8

    .line 8
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v6, v2}, Landroid/util/Size;-><init>(II)V

    .line 9
    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    .line 11
    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    const/high16 v0, 0x42a60000    # 83.0f

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 13
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v2, Landroid/util/Size;

    invoke-direct {v0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 17
    iget v2, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v2, v6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/high16 v0, 0x437a0000    # 250.0f

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 21
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v4

    .line 22
    invoke-virtual {v0, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    .line 24
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr p1, v2

    invoke-virtual {v0, v3, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 34
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updateTranslation(ZFFFLcom/motorola/camera/PreviewSize;Z)V

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 39
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 41
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    .line 42
    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 43
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    .line 44
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    goto/16 :goto_6

    .line 45
    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    goto/16 :goto_6

    .line 47
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v4

    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v0

    .line 49
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v6, 0x43c60000    # 396.0f

    mul-float/2addr v2, v6

    sub-float/2addr v2, p1

    float-to-int p1, v2

    .line 50
    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    .line 51
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v4

    mul-float/2addr p1, v0

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x43be0000    # 380.0f

    mul-float/2addr v0, v2

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 53
    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    .line 54
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 55
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 56
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 58
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 59
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 60
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 61
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_6

    .line 62
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    .line 63
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    .line 64
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 65
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 66
    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    goto/16 :goto_6

    .line 67
    :cond_7
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 68
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 69
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 70
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 71
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 72
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 73
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 74
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->progressCapture(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 75
    :cond_8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    .line 77
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 78
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 80
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    .line 81
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    .line 82
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 83
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 84
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_2

    .line 85
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 86
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_3

    .line 87
    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 88
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    .line 89
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 90
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 91
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 92
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 93
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    .line 94
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 95
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 96
    :cond_c
    :goto_6
    monitor-exit p0

    return-void

    .line 97
    :cond_d
    :goto_7
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadTextures()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    return-void
.end method

.method public final updateProgress(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float v0, p0, p1

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-float p0, p1, v1

    goto :goto_0

    :cond_0
    sub-float p0, p1, v1

    :cond_1
    :goto_0
    return p0
.end method
