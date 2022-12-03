.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "ModeMenuTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mCellAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;",
            ">;"
        }
    .end annotation
.end field

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mDensity:F

.field public final mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

.field public mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLoaded:Z

.field public final mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public mMenuY:F

.field public final mModesItemCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;",
            ">;"
        }
    .end annotation
.end field

.field public mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

.field public mOnDownCoords:Landroid/graphics/PointF;

.field public mOnDownHandled:Z

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mShouldHidden:Z

.field public final mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public final mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

.field public mTopRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public final mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

.field public final mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mViewSize:Lcom/motorola/camera/PreviewSize;

.field public movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final onMenuListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/PreviewSize;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v8, 0x0

    .line 2
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    .line 3
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z

    .line 4
    new-instance v4, Lcom/motorola/camera/utility/Flags;

    const-class v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 5
    invoke-direct {v4, v5, v8}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 6
    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 7
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$$ExternalSyntheticLambda0;

    invoke-direct {v4, v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    .line 8
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mShouldHidden:Z

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    .line 10
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;

    invoke-direct {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onMenuListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    .line 11
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;

    invoke-direct {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    .line 12
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 13
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    .line 14
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-direct {v9, v1, v2, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 15
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v10, 0x1

    invoke-direct {v4, v1, v2, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 16
    iput-boolean v10, v9, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    .line 18
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 19
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 20
    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 21
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE_BG:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 22
    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 23
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;Z)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    const v3, 0x3e4ccccd    # 0.2f

    .line 24
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 25
    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/high16 v3, 0x42500000    # 52.0f

    mul-float/2addr v3, v11

    const/4 v12, 0x0

    .line 26
    invoke-virtual {v1, v3, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    move-object/from16 v1, p4

    .line 27
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 28
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;Z)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 29
    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 30
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    .line 31
    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    .line 32
    invoke-direct {v13, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 33
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 34
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f12013b

    .line 35
    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FIII)V

    iput-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 36
    invoke-virtual {v14, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 37
    invoke-virtual {v13, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 38
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 39
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    .line 40
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v2

    const/16 v3, 0x20

    .line 41
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 42
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTopRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 43
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v2

    const/16 v3, 0x10

    .line 44
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v11, v2

    .line 45
    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 46
    iput v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    .line 47
    iput v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    const/4 v3, 0x2

    .line 48
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    .line 49
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v2

    const/4 v4, 0x3

    .line 50
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    .line 51
    iput v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    const/16 v4, 0x58

    .line 52
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 53
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 54
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v2

    const/16 v4, 0x5a

    .line 55
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 56
    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showScrollBar(Z)V

    .line 57
    monitor-enter v9

    .line 58
    :try_start_0
    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 59
    iput-boolean v1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isRtl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 60
    :cond_0
    monitor-exit v9

    .line 61
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 64
    iput v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 65
    :cond_1
    monitor-exit v1

    .line 66
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 68
    iput-boolean v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mBottomToTop:Z

    .line 69
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showScrollBar(Z)V

    .line 71
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    .line 72
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float v7, v1, v6

    add-float/2addr v7, v4

    mul-float/2addr v6, v2

    sub-float v4, v7, v6

    .line 73
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v6, v12, v7, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    .line 74
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v6

    const/16 v7, 0x40

    .line 75
    iput v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 76
    iput v3, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    .line 77
    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 78
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v3

    const/16 v6, 0x64

    .line 79
    iput v6, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 80
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/high16 v6, 0x43700000    # 240.0f

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v7, v6

    .line 81
    iput v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    .line 82
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v12, v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 83
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v12, v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-float/2addr v1, v2

    .line 84
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 85
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 86
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v4, v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 87
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v12, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :catchall_0
    move-exception v0

    .line 88
    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    .line 89
    monitor-exit v9

    throw v0
.end method


# virtual methods
.method public declared-synchronized addSupportedTextures(Lcom/motorola/camera/PreviewSize;I)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateFirstMode(Ljava/util/List;)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getMenuOrder()Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$ModeComparator;

    invoke-direct {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$ModeComparator;-><init>(Ljava/util/List;)V

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 10
    invoke-static {v5}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->getLayoutScale()I

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 13
    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v6, 0x44480000    # 800.0f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-eqz v4, :cond_2

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/4 v6, 0x4

    .line 15
    iput v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    goto :goto_1

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/16 v6, 0x8

    .line 17
    iput v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    .line 18
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x1f

    const/16 v8, 0x18

    if-eq v6, v8, :cond_6

    if-ne v6, v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v7, 0x6

    const/16 v8, 0x12

    if-eq v6, v8, :cond_5

    if-ne v6, v7, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_6

    .line 21
    :cond_5
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    .line 22
    :cond_6
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    move v6, v5

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v2

    :goto_6
    if-eqz v6, :cond_9

    goto :goto_2

    .line 23
    :cond_9
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-nez v6, :cond_a

    const-string v6, "ModeMenuTexture"

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mode not loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 25
    :cond_a
    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    .line 26
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToMenu()V

    .line 27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x13

    if-ne v8, v7, :cond_b

    .line 28
    sget-object v7, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v7}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v7

    goto :goto_7

    :cond_b
    move v7, v5

    :goto_7
    if-nez v7, :cond_c

    move v7, v2

    goto :goto_8

    :cond_c
    move v7, v5

    .line 29
    :goto_8
    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setEnabled(Z)V

    .line 30
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v8, 0x42b00000    # 88.0f

    .line 31
    invoke-virtual {v6, v8, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fixed(FF)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    int-to-float v8, v3

    .line 32
    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->left(F)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->right(F)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 33
    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    const/16 v7, 0x10

    .line 34
    iput v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 35
    iput v4, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto/16 :goto_2

    .line 36
    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    new-array v1, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 37
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateMenuArea()Z

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->rotateLayout(Lcom/motorola/camera/PreviewSize;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beginEditSlider(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SLIDER_TAG"

    const/4 v3, -0x1

    .line 1
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "SLIDER_POINT"

    .line 2
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    const-string v5, "SLIDER_CLICK"

    .line 3
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    const-string v6, "SLIDER_CELL_POS"

    .line 4
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 5
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v7, 0x1

    new-array v8, v7, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 6
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->createSlider(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 7
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 9
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 10
    invoke-virtual {v11, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 11
    iput v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 12
    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->right(F)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->left(F)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 13
    invoke-virtual {v8, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSliderBg(ZI)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    new-array v8, v7, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    aput-object v11, v8, v10

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 15
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    const/4 v6, 0x4

    if-eq v2, v3, :cond_4

    .line 16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-nez v3, :cond_3

    const/16 v3, 0x12

    const/4 v8, 0x6

    if-ne v2, v8, :cond_1

    .line 17
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 18
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    goto :goto_1

    :cond_1
    if-ne v2, v3, :cond_2

    .line 20
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 21
    invoke-static {v8}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v3

    .line 22
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    goto :goto_1

    :cond_2
    return-void

    .line 23
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 24
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 26
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 28
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v8

    invoke-direct {v2, v3, v4, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 29
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 30
    iput-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 31
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->beginEdit()V

    .line 32
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 33
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    .line 34
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 35
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 36
    invoke-virtual {v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    move v1, v7

    goto :goto_2

    :cond_4
    move v1, v10

    .line 38
    :goto_2
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v2, :cond_5

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6

    .line 39
    :cond_5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setDisplayOrientation(I)V

    .line 40
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v2, :cond_8

    .line 41
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 42
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->canRemove(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 44
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f1201c1

    .line 45
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 46
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 47
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    goto :goto_3

    .line 48
    :cond_7
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 49
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f120301

    .line 50
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 51
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 52
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    .line 53
    :cond_8
    :goto_3
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mShouldHidden:Z

    if-eqz v2, :cond_9

    .line 54
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 55
    :cond_9
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 56
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 57
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 58
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 60
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 61
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v3, 0x41c00000    # 24.0f

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v3, v4

    .line 62
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v4, v5

    .line 63
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 64
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    if-eqz v1, :cond_a

    goto/16 :goto_4

    .line 65
    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 67
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    .line 68
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v1, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 69
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 70
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 71
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 72
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 73
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x42f00000    # 120.0f

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 74
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 75
    invoke-virtual {v2, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 76
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 77
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v15, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 78
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;

    invoke-direct {v12, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v13, 0x104

    const/16 v22, 0x2

    const/16 v18, 0x0

    const/16 v17, 0x2

    move-object v11, v2

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 79
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 80
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 81
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 82
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 83
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 84
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 85
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 86
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 87
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$4;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    const-wide/16 v18, 0xa0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const/4 v2, 0x3

    new-array v4, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 88
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    aput-object v5, v4, v10

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    aput-object v5, v4, v7

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 89
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :goto_4
    return-void
.end method

.method public final calculateMenuHeight(Lcom/motorola/camera/PreviewSize;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    .line 3
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenuY:F

    .line 4
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 5
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    return p1
.end method

.method public final canRemove(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public drawFbo([F[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    return-void
.end method

.method public endEditModeMenu()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 11
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 12
    iget-boolean v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-eqz v5, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 15
    :cond_1
    monitor-exit v0

    .line 16
    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->saveSlider(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    monitor-enter v0

    .line 19
    :try_start_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 20
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 21
    :cond_2
    monitor-exit v0

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateMenuArea()Z

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_3

    .line 26
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    .line 28
    monitor-exit v0

    throw p0
.end method

.method public final getLayoutScale()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p0

    div-float/2addr v0, p0

    const/high16 p0, 0x43840000    # 264.0f

    sub-float/2addr v0, p0

    const/high16 p0, 0x41000000    # 8.0f

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized initAllowedTextures(Z)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->getStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/settings/Setting;->mAndroidIconMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    .line 8
    :goto_1
    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 9
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_2

    const/16 v10, 0x21

    if-eq v9, v10, :cond_2

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    move v9, v6

    goto :goto_3

    :cond_2
    :goto_2
    move v9, v4

    :goto_3
    if-eqz v9, :cond_3

    goto :goto_4

    .line 10
    :cond_3
    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 11
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 12
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v11, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->getModeText(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-result-object v12

    .line 13
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;IZZ)V

    const/4 v8, -0x1

    .line 14
    iput v8, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    .line 15
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v8

    .line 16
    iget v8, v8, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 17
    iput v8, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    .line 18
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 19
    iput v8, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 20
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 22
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 23
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;Ljava/util/ArrayList;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 24
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final limitMovePos()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 6
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    cmpg-float v2, v2, v1

    const/4 v3, 0x4

    if-gez v2, :cond_0

    .line 7
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 9
    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 15
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 16
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 18
    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    :cond_1
    return-void
.end method

.method public declared-synchronized loadTexture()V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowGlowTex:Z

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->loadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    const/16 v3, 0x12c

    .line 6
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onMenuListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    .line 8
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v6, ""

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v2, 0x3e99999a    # 0.3f

    .line 10
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->loadTexture()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 17
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 18
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    .line 19
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onMenuListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    .line 22
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    return-void
.end method

.method public onDraw([F[F)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 5
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->onDraw([F[F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 7
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 9
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDraw([F[F)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 11
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 14
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 16
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 21
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;Landroid/graphics/PointF;Lcom/motorola/camera/utility/Flags;)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v11, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    .line 23
    invoke-virtual {v11, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToShadow(Z)V

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 25
    invoke-virtual {v11, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 26
    iget-boolean v0, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {v11, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->onDraw([F[F)V

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    .line 31
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;->onDraw([F[F)V

    :cond_7
    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->onPreDraw([F[F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->DONE_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 4
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-nez v5, :cond_2

    :cond_1
    return v6

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne v5, v9, :cond_23

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_21

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 8
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 10
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 13
    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v2, v0

    .line 14
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, p1

    .line 15
    iget p1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p1, v10

    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    mul-float/2addr p1, p1

    add-float/2addr p1, v0

    float-to-double v0, p1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 19
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 22
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_3
    return v6

    .line 23
    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 24
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 26
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    .line 28
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {v5, v9, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v4, v5, v0, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_e

    .line 30
    :cond_5
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 31
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v7

    .line 32
    :cond_6
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 33
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v1, 0x4

    .line 34
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 35
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 36
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 37
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToShadow(Z)V

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 41
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 42
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->canRemove(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 46
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 47
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_d

    .line 48
    :cond_8
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 49
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 50
    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 52
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 53
    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    invoke-direct {v0, v2, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 54
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 55
    iget v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-float v3, v2, v0

    .line 56
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v4

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v5, v8

    cmpl-float v3, v3, v5

    const/high16 v5, 0x40a00000    # 5.0f

    if-lez v3, :cond_9

    .line 57
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 58
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 59
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 60
    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 61
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 62
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->limitMovePos()V

    goto :goto_1

    :cond_9
    sub-float/2addr v0, v2

    neg-int v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v8

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 64
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 65
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 66
    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 67
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 68
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->limitMovePos()V

    .line 69
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 70
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 71
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 72
    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 74
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->canRemove(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 76
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isSliderBg()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 77
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-nez v2, :cond_1f

    .line 78
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 81
    monitor-enter v0

    .line 82
    :try_start_0
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    .line 83
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 84
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 85
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v8

    cmpg-float v5, v5, v10

    if-gez v5, :cond_e

    .line 86
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 87
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    move v8, v6

    move v9, v7

    :goto_2
    if-ltz v5, :cond_12

    .line 88
    iget-object v10, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 89
    invoke-virtual {v10, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 90
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    move v8, v7

    goto :goto_3

    :cond_c
    if-eqz v8, :cond_d

    .line 91
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 92
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v11, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 93
    iget v12, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v12, v4

    iput v12, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 94
    invoke-virtual {v0, v10, v9, v11, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    :cond_d
    move v9, v6

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 95
    :cond_e
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 96
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v6

    move v5, v7

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 97
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v5, :cond_f

    :goto_5
    move v8, v7

    goto :goto_6

    :cond_f
    move v8, v7

    goto :goto_4

    :cond_10
    if-eqz v8, :cond_11

    .line 98
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 99
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v10, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 100
    iget v11, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v11, v4

    iput v11, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 101
    invoke-virtual {v0, v9, v5, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    :cond_11
    move v5, v6

    goto :goto_4

    :cond_12
    :goto_6
    if-eqz v8, :cond_13

    .line 102
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->removeCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 103
    :cond_13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    goto :goto_7

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 105
    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->getLayoutScale()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSliderBg(ZI)V

    .line 106
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 107
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 108
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 109
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 110
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateMenuArea()Z

    goto/16 :goto_b

    .line 111
    :cond_15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isSliderBg()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 112
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 113
    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-eqz v0, :cond_16

    const-string v0, "ModeMenuTexture"

    const-string v2, "move cell is animating."

    .line 114
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_16
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_17

    .line 116
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    goto :goto_8

    .line 117
    :cond_17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    .line 118
    :goto_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSliderBg(ZI)V

    .line 119
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 120
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 121
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 122
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 123
    monitor-enter v2

    .line 124
    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 125
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 127
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    move v6, v7

    goto :goto_9

    :cond_19
    if-eqz v6, :cond_18

    .line 128
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 129
    invoke-virtual {v2, v5, v8, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    move-object v4, v8

    goto :goto_9

    :cond_1a
    if-eqz v6, :cond_1b

    .line 130
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->removeCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 131
    :cond_1b
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    monitor-exit v2

    goto :goto_a

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    .line 133
    :cond_1c
    :goto_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 134
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 136
    iget-object v11, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 137
    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/4 v13, 0x0

    move-object v10, p1

    .line 138
    invoke-virtual/range {v8 .. v13}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Z)Z

    goto :goto_c

    .line 139
    :cond_1d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "must add!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_1f
    :goto_b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    if-nez v0, :cond_20

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    .line 141
    :cond_20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;->event:Landroid/view/MotionEvent;

    .line 142
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$CheckStopMovingPress;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 145
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :goto_c
    move v6, v7

    :goto_d
    return v6

    .line 146
    :cond_21
    :goto_e
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    if-eqz v0, :cond_2d

    .line 147
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownCoords:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 149
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_22

    return v7

    .line 150
    :cond_22
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    return v6

    .line 151
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v7, :cond_24

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_2d

    .line 153
    :cond_24
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 154
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 155
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 156
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 157
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    if-eqz v5, :cond_25

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v9

    .line 160
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v9, v11, v5, v6, v12}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 161
    :cond_25
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 162
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 163
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 164
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    return v7

    .line 165
    :cond_26
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 166
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 167
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 168
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 169
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->endEdit()V

    .line 170
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->editFinish(Z)V

    .line 171
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 172
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 173
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 176
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 177
    :cond_27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 178
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 179
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->endEdit()V

    .line 180
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 181
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 182
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->endEditModeMenu()V

    goto :goto_f

    .line 183
    :cond_28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 184
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->endEdit()V

    .line 185
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 186
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 187
    :cond_29
    :goto_f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 188
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 189
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto :goto_10

    .line 190
    :cond_2a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    .line 191
    :goto_10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 192
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 193
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 194
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 195
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 196
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected(Z)V

    .line 197
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 198
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 199
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 200
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    :cond_2b
    return v0

    .line 201
    :cond_2c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 202
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 203
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 204
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 205
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    .line 206
    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    .line 207
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 208
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->endEditModeMenu()V

    .line 209
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 p1, 0x6

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return v7

    .line 210
    :cond_2d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v8, :cond_2e

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    if-eqz v0, :cond_33

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_33

    .line 214
    :cond_2e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2f

    .line 216
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    .line 217
    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    .line 218
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 219
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 220
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 221
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 222
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v7

    :cond_2f
    if-nez v0, :cond_30

    .line 223
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_30

    .line 225
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 226
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    .line 227
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    .line 228
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 229
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 230
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 231
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    if-nez v0, :cond_31

    .line 232
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_31

    .line 234
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 235
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 236
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 237
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 238
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_31
    if-eqz v0, :cond_32

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_32

    move v6, v7

    :cond_32
    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    .line 240
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownCoords:Landroid/graphics/PointF;

    return v0

    :cond_33
    return v6
.end method

.method public rotateLayout(Lcom/motorola/camera/PreviewSize;I)V
    .locals 12

    .line 1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setDisplayOrientation(I)V

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    .line 5
    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTopRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/16 v1, 0x20

    .line 7
    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->calculateMenuHeight(Lcom/motorola/camera/PreviewSize;)F

    move-result p2

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget v3, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    .line 10
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    float-to-int v3, v3

    float-to-int v5, p2

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(II)V

    .line 11
    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 12
    iput-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 13
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 15
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 16
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 17
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v4, v6

    add-float/2addr v4, p2

    .line 18
    iget-object p2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 19
    iget-boolean v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    if-nez v9, :cond_0

    .line 20
    iget-object v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 21
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 22
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 23
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 24
    instance-of v10, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v10, :cond_1

    .line 25
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    .line 26
    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v11, v3, v8

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v10, v4

    .line 27
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v11, v6, v10

    if-lez v11, :cond_1

    move-object v2, v9

    move v6, v10

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 29
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, p2

    .line 30
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42b00000    # 88.0f

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 31
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTopRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    div-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 32
    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 33
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    .line 34
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    float-to-int v2, v2

    invoke-direct {v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(II)V

    .line 35
    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 36
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    .line 38
    :cond_4
    iget v0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 39
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 40
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    neg-float v0, v0

    .line 41
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenuY:F

    add-float/2addr v0, v2

    .line 42
    invoke-virtual {v1, p2, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    .line 43
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 44
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, p2, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v0, p2

    sub-float/2addr p1, v0

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0

    throw p1
.end method

.method public setClickable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setDisplayOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 6
    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method

.method public declared-synchronized setVisibility(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->unloadTexture()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->unloadTexture()V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateFirstMode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 2
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->SHOW_AR_STICKERS_DOT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_AR_STICKERS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->SHOW_SUPER_NIGHT_DOT:Lcom/motorola/camera/AppFeatures$Feature;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_SUPER_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final updateMenuArea()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 7
    :goto_1
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    return v4

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    throw p0
.end method

.method public updateTalkback()V
    .locals 13

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->calculateMenuHeight(Lcom/motorola/camera/PreviewSize;)F

    move-result v4

    .line 13
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    mul-float/2addr v4, v6

    const/4 v7, 0x0

    .line 14
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 15
    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    .line 16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 17
    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellHeight:F

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 19
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    .line 20
    iget v11, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v11, v5

    mul-float v12, v8, v6

    sub-float/2addr v11, v12

    .line 21
    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float v10, v4, v10

    mul-float v12, v7, v6

    sub-float/2addr v10, v12

    float-to-int v11, v11

    .line 22
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    float-to-int v10, v10

    .line 23
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "MENU_TEXT"

    .line 26
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "MENU_LEFT"

    .line 27
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "MENU_TOP"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    const-string v2, "LAYOUT_WIDTH"

    .line 29
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    mul-float/2addr v4, v1

    const-string v1, "LAYOUT_HEIGHT"

    .line 30
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 31
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenuY:F

    const-string v1, "LAYOUT_Y"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "MENU_CELL_WIDTH"

    .line 32
    invoke-virtual {v0, p0, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "MENU_CELL_HEIGHT"

    .line 33
    invoke-virtual {v0, p0, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 34
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 35
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method
