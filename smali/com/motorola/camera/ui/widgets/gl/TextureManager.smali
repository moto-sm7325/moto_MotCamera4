.class public Lcom/motorola/camera/ui/widgets/gl/TextureManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "TextureManager.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
    }
.end annotation


# static fields
.field public static final STAGE_DEFERRED_LOAD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/DrawOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAGE_MAIN_UI_LOAD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/DrawOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActiveRender:Z

.field public mCachePreview:Z

.field public final mClearColor:[F

.field public mClearColorAnimator:Landroid/animation/ValueAnimator;

.field public final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/ui/widgets/gl/DrawOrder;",
            "Lcom/motorola/camera/ui/widgets/gl/iGlComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultClearColor:I

.field public final mDrawComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/iGlComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mLoadComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/iGlComponent;",
            ">;"
        }
    .end annotation
.end field

.field public mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

.field public mOrientation:I

.field public mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mProjection:I

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mTranslucent:Z

.field public final mVMatrix:[F

.field public mVboManager:Lcom/motorola/camera/ui/widgets/gl/VboManager;

.field public mViewPort:[I

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static $r8$lambda$iuxuBJ7lm7a1mbScZ9vicucW56w(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->ATLAS_LOADED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_DEFERRED_LOAD:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 17
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v1, :cond_2

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_4
    monitor-exit p0

    goto :goto_2

    .line 22
    :cond_5
    :goto_1
    monitor-exit p0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 3
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    aput-object v2, v1, v4

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    aput-object v2, v1, v5

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    aput-object v2, v1, v0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CIRCULAR_INDETERMINATE_SPINNER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_OVERLAY:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_DEFERRED_LOAD:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    .line 7
    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 9
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mActiveRender:Z

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 11
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    const/4 v4, 0x0

    .line 12
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColorAnimator:Landroid/animation/ValueAnimator;

    .line 13
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mHandler:Landroid/os/Handler;

    .line 14
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCachePreview:Z

    .line 15
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 16
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {v5, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f0603bc

    .line 22
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 23
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p1

    aput p1, v2, v3

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result p1

    aput p1, v2, v1

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    const/4 p1, 0x2

    aput p0, v2, p1

    return-void
.end method

.method public static convertToGLColor(I[F)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    const/4 v0, 0x2

    aput p0, p1, v0

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkMainUiLoading()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->ATLAS_LOADED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->STAGE_MAIN_UI_LOAD:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v1, :cond_2

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraProjectionMatrix()[F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 5
    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    return-object p0
.end method

.method public getHudProjectionMatrix()[F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 5
    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 4
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
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 7
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 9
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 11
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 13
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v1, v3

    .line 15
    move-object v2, p0

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    .line 17
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Ljava/util/function/BiFunction;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/function/BiFunction<",
            "Lcom/motorola/camera/ui/widgets/gl/iGlComponent;",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    iget v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v3, v4

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 6
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v2, :cond_1

    const/4 v4, 0x3

    .line 11
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p2, v2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_4

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_3

    .line 15
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 16
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    .line 18
    :cond_3
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v3, :cond_6

    .line 20
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_5

    .line 21
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    :cond_6
    :goto_1
    move v1, v3

    .line 23
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PreviewSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 8
    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 9
    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 11
    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 13
    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 14
    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 15
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 16
    :cond_2
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 17
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 18
    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 19
    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 21
    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v1, :cond_7

    .line 23
    iput-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 24
    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 25
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_2

    .line 26
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 27
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v2, :cond_6

    goto :goto_1

    .line 29
    :cond_6
    iput-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 30
    iput-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 31
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 32
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValidContext(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
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
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 5
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_0

    .line 6
    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 8
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 12
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 14
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_0

    .line 15
    :cond_1
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 17
    :cond_2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 19
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 25
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 27
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_0

    .line 28
    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 30
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    aput v1, p1, v0

    const/high16 v0, -0x1000000

    aput v0, p1, v4

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColorAnimator:Landroid/animation/ValueAnimator;

    .line 31
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 34
    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDefaultClearColor:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    invoke-static {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->convertToGLColor(I[F)V

    goto :goto_0

    .line 37
    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 38
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 39
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 40
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 41
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 43
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 45
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-void
.end method
