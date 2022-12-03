.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "AlwaysAwareActionsTexture.java"


# instance fields
.field public mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

.field public mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

.field public mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

.field public mDensity:F

.field public mLayoutSize:Landroid/graphics/PointF;

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 9
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    const/high16 p3, 0x41000000    # 8.0f

    mul-float/2addr p2, p3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 10
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, p3

    .line 11
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p3, p2, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;-><init>(FFILcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec$1;)V

    .line 12
    iput-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 15
    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    return-void
.end method


# virtual methods
.method public declared-synchronized getLayoutSize()Landroid/graphics/PointF;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mLayoutSize:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRect()Lcom/google/gson/FieldAttributes;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/gson/FieldAttributes;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, -0x40000000    # -2.0f

    div-float v4, v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v0, v5

    div-float/2addr v2, v5

    div-float/2addr v0, v3

    invoke-direct {v1, v4, v6, v2, v0}, Lcom/google/gson/FieldAttributes;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTexture()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDensity:F

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAdapter(Lcom/motorola/camera/ui/widgets/gl/ListAdapter;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->loadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;)V

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->loadTexture()V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 0

    return-void
.end method

.method public onCardsDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    .line 3
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 4
    iget p0, p0, Landroid/graphics/PointF;->x:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-virtual/range {v1 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    :cond_0
    return-void
.end method

.method public onContentListChanged()V
    .locals 0

    return-void
.end method

.method public onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 2
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 3
    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 4
    invoke-virtual/range {v1 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
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

.method public onDrawFbo([F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->onPreDraw([F[F)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method

.method public resetTouchFeedback()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mButtonsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;

    .line 3
    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;->setPressed(ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;

    .line 5
    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->setPressed(ZZ)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    return-void
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 6
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setDisplayOrientation(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDisplayOrientation(I)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->setDisplayOrientation(I)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateLayoutBounds()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateTranslations()V

    return-void
.end method

.method public showMultiActions(Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mGrid:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    .line 5
    iget v1, v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    .line 6
    iget-object v4, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 7
    check-cast v4, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;

    .line 8
    iget-object v4, v4, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    .line 9
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 10
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 11
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListButtonsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 12
    iget-object v6, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    .line 13
    check-cast v6, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;

    .line 14
    iget-object v6, v6, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    .line 15
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    .line 17
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;

    .line 18
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, "[\\t\\n\\r]"

    const-string v11, " "

    .line 19
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x19

    if-le v10, v11, :cond_1

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 22
    :cond_1
    iget-object v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 23
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz v9, :cond_2

    invoke-interface {v9}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    .line 24
    :cond_2
    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    iget-object v10, p1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    invoke-direct {v9, v10, v7}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    .line 25
    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mAction:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    .line 26
    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 27
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v7, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(I)V

    .line 28
    invoke-virtual {v8, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->setPressed(ZZ)V

    .line 29
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v7

    const/high16 v9, 0x41800000    # 16.0f

    mul-float/2addr v7, v9

    .line 30
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v10, v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v9, v11, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    .line 31
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v9, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 32
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setAbsoluteRadius(F)V

    .line 33
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    neg-float v10, v10

    div-float/2addr v10, v12

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    add-float/2addr v11, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v11, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 34
    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mIcon:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v11, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v11, v12

    .line 35
    iget-object v13, v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 36
    iget v13, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v12

    sub-float/2addr v11, v13

    sub-float/2addr v11, v7

    invoke-virtual {v9, v11, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 37
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    const/high16 v9, 0x3f000000    # 0.5f

    iget-object v11, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float/2addr v11, v9

    invoke-virtual {v7, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 38
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLayoutSize:Landroid/graphics/PointF;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    neg-float v13, v11

    div-float/2addr v13, v12

    iget v9, v9, Landroid/graphics/PointF;->y:F

    neg-float v9, v9

    div-float/2addr v9, v12

    div-float/2addr v11, v12

    .line 39
    monitor-enter v7

    .line 40
    :try_start_0
    iget-object v12, v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v12, v2

    .line 41
    aput v9, v12, v3

    const/4 v13, 0x2

    .line 42
    aput v10, v12, v13

    const/4 v13, 0x3

    .line 43
    aput v11, v12, v13

    const/4 v11, 0x4

    .line 44
    aput v9, v12, v11

    const/4 v9, 0x5

    .line 45
    aput v10, v12, v9

    .line 46
    iget-object v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_3

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_3
    monitor-exit v7

    if-eqz v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 48
    iput-boolean v3, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mDrawLine:Z

    .line 49
    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mLine:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 50
    :cond_4
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiList:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    .line 51
    iput-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareMoreResultsButtonTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    .line 52
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mMultiListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v7

    throw p0

    .line 54
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->updateMultiIntentTranslations()V

    .line 55
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onChanged()V

    .line 56
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateTranslations()V

    .line 57
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 58
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void
.end method

.method public declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->clear()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mActionsCardTexture:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDefaultCard:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareDefaultContentTexture;->unloadTexture()V

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateLayoutBounds()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getTsbMarginHeight()F

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_2

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_2

    :cond_2
    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v3, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 5
    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    invoke-direct {v4, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(II)V

    .line 6
    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 7
    iput-boolean v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 8
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->doLayout()V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 11
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    if-ne v4, v3, :cond_4

    .line 12
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    if-eq v2, v0, :cond_5

    .line 13
    :cond_4
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(II)V

    .line 14
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 15
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->doLayout()V

    :cond_5
    return-void
.end method

.method public updateTranslations()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mLayoutSize:Landroid/graphics/PointF;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mContentCardsList:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    return-void
.end method
