.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "ModesSliderTexture.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnim:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mCellAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;",
            ">;"
        }
    .end annotation
.end field

.field public final mDensity:F

.field public final mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public final mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

.field public mDragDirection:I

.field public mDragDisableTime:J

.field public final mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;",
            ">;"
        }
    .end annotation
.end field

.field public mFromMode:I

.field public mIsModeMenu:Z

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLeftIgnoreArea:F

.field public mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public mOnOtherDownHandled:Z

.field public mOnSliderDownHandled:Z

.field public mOrientation:I

.field public final mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mResetDialog:Landroid/app/AlertDialog;

.field public mRightIgnoreArea:F

.field public mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mSkipDragSwitch:Z

.field public mSkipGestureDetector:Z

.field public final mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 12

    const-string v0, "renderer"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    .line 3
    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 4
    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    .line 9
    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    .line 12
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 13
    iput-boolean v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    .line 14
    move-object p1, p2

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p3

    .line 15
    iget p3, p3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    .line 16
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v4, v3, [I

    aput p3, v4, v0

    aput p3, v4, v1

    const/4 v5, 0x2

    aput p3, v4, v5

    const/4 v6, 0x3

    aput p3, v4, v6

    .line 17
    monitor-enter v2

    move p3, v0

    :goto_0
    if-ge p3, v3, :cond_0

    .line 18
    :try_start_0
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    mul-int/lit8 v7, p3, 0x4

    aget v8, v4, p3

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    aput v8, v6, v7

    .line 19
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    add-int/lit8 v8, v7, 0x1

    aget v10, v4, p3

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    aput v10, v6, v8

    .line 20
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    add-int/lit8 v8, v7, 0x2

    aget v10, v4, p3

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    aput v10, v6, v8

    .line 21
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    add-int/lit8 v7, v7, 0x3

    aget v8, v4, p3

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    aput v8, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v2

    throw p0

    :cond_0
    monitor-exit v2

    .line 23
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    .line 25
    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 26
    invoke-direct {p3, p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 27
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 28
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    .line 29
    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    .line 30
    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    .line 31
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const p3, 0x7f0802bd

    invoke-direct {p1, p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 32
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 33
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    const/high16 p3, 0x41200000    # 10.0f

    .line 34
    iput p3, p2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    .line 35
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 37
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v3, 0x7f08018f

    invoke-direct {p1, p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 38
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 39
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 40
    iput p3, v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    .line 41
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 42
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p1

    const/16 p2, 0x40

    .line 44
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    .line 45
    iput v5, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    .line 46
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 47
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 p2, -0x1

    invoke-static {v7, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->getModeText(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;IZZ)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 48
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    .line 49
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p2

    .line 50
    iget p2, p2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    .line 51
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    .line 52
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const p3, 0x7f12026a

    .line 53
    invoke-static {p2, p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->getModeText(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    return-void
.end method

.method public static access$1000(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FF)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p2, p1

    .line 5
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getFlyDistance(F)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    .line 6
    iget p1, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iput p1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 7
    iget p1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    iput p1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$6;

    invoke-direct {v2, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v3, 0xa0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 9
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 10
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static access$200(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public static access$500(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_0
    return-void
.end method

.method public static access$800(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FLcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 12
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 14
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 15
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 16
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v5, :cond_1

    .line 17
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->isNormalVideoCellTag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 19
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 20
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 21
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 22
    iget v3, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    cmpl-float v5, v3, v1

    if-lez v5, :cond_3

    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_2

    .line 23
    :cond_3
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v0, v0

    cmpg-float v1, v3, v0

    if-gez v1, :cond_4

    iput v0, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 24
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 26
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 27
    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 29
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 30
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v5, v3

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 31
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 32
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    .line 33
    :cond_5
    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    move-object v5, v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :cond_7
    if-nez v5, :cond_8

    .line 34
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    .line 35
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_4

    .line 36
    :cond_9
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v0

    .line 37
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float p1, p1, v8

    const/high16 v8, 0x42000000    # 32.0f

    if-lez p1, :cond_a

    sub-float/2addr v0, v7

    .line 38
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 39
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    add-float/2addr v0, v7

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p2, v8

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    goto :goto_4

    :cond_a
    sub-float p1, v0, v7

    .line 41
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 42
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p1, v5

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p2, v8

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 44
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 45
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr p2, v1

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 46
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 47
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 48
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :cond_b
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 49
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    .line 50
    :cond_c
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_b

    move-object v3, v1

    move v0, v5

    goto :goto_5

    .line 51
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-eqz v3, :cond_e

    if-eqz p1, :cond_e

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 53
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    .line 54
    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    .line 55
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 56
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 57
    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 58
    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 59
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFZ)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    neg-float p2, p2

    div-float/2addr p2, v0

    .line 1
    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeSliderY()F

    move-result p0

    const/high16 p3, 0x41e00000    # 28.0f

    add-float/2addr p0, p3

    mul-float/2addr p0, p1

    add-float/2addr p0, p2

    goto :goto_0

    :cond_0
    div-float/2addr p2, v0

    .line 2
    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p0

    mul-float/2addr p0, p1

    sub-float p0, p2, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized animateEdit(Z)V
    .locals 10

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-eqz p1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    .line 2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Z)V

    const-wide/16 v4, 0x64

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized animateMoveSlider(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
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

.method public declared-synchronized animateMoveSlider(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 13

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    const/16 v1, 0x12

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-nez p1, :cond_4

    .line 11
    monitor-exit p0

    return-void

    :cond_4
    move-object v3, p1

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_1
    const/4 p1, 0x0

    .line 12
    :try_start_3
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    iget v2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v8, v1, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getScaledWidth()F

    move-result v7

    .line 15
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result p1

    sub-float v4, p1, v7

    .line 16
    invoke-virtual {v8, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    float-to-long v1, p1

    const-wide/16 v5, 0xa0

    cmp-long p1, v1, v5

    const-wide/16 v9, 0xa

    if-lez p1, :cond_6

    move-wide v9, v5

    goto :goto_2

    :cond_6
    cmp-long p1, v1, v9

    if-gez p1, :cond_7

    goto :goto_2

    :cond_7
    move-wide v9, v1

    .line 17
    :goto_2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;

    move-object v1, v11

    move-object v2, p0

    move-object v5, v8

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;F)V

    const/4 v7, 0x2

    const/4 v12, 0x0

    move-object v1, p1

    move-object v2, v11

    move-wide v3, v9

    move-object v5, p2

    move-object v6, v8

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 18
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 19
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 20
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 21
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized animateReload(Z)V
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->isDefaultSlider()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-eqz p1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    .line 2
    :goto_1
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Z)V

    const-wide/16 v4, 0x64

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized animateSliderToMultiMode(I)V
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v9, v1

    move-object v10, v9

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeIn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fadeOut()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeOut()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fadeIn()V

    .line 6
    :cond_2
    :goto_1
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-nez v3, :cond_3

    move-object v9, v2

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->isNormalVideoCellTag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_4
    const/16 v0, 0x3e8

    const/16 v11, 0x2c

    const/4 v12, 0x1

    if-nez p1, :cond_5

    move-object v1, v9

    goto :goto_3

    :cond_5
    if-eq p1, v12, :cond_7

    if-ne p1, v11, :cond_6

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_8

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    goto :goto_3

    :cond_7
    :goto_2
    move-object v1, v10

    :cond_8
    :goto_3
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 11
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v4, v4

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_9

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    move v4, p1

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->resetDragSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;ILcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_4

    .line 14
    :cond_9
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez v2, :cond_a

    .line 15
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 16
    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v2

    .line 17
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v2, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->resetClickSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;F)V

    .line 18
    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, v1

    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v2, 0x4

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 21
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    goto :goto_4

    .line 22
    :cond_b
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSliderPosText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_c
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    const/4 v8, 0x1

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->changeSliderToMultiMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Ljava/lang/Runnable;Z)V

    if-nez p1, :cond_d

    .line 27
    invoke-virtual {v9, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto :goto_6

    :cond_d
    if-eq p1, v12, :cond_f

    if-ne p1, v11, :cond_e

    goto :goto_5

    :cond_e
    if-ne p1, v0, :cond_10

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 31
    :cond_f
    :goto_5
    invoke-virtual {v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 33
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-nez p1, :cond_11

    .line 34
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    .line 35
    :cond_11
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 37
    iput-boolean v12, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized animateSliderToSingleMode(IZ)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTempModeText(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 6
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-nez v3, :cond_1

    move-object v5, v2

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->isNormalVideoCellTag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v6, v2

    goto :goto_0

    .line 8
    :cond_2
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fadeOut()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 12
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v1

    .line 14
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    add-float/2addr v1, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr v1, v3

    .line 15
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fadeIn()V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setAlpha(F)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    if-eqz p2, :cond_4

    .line 20
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    new-instance v9, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    const/4 v10, 0x1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float v11, p1, p2

    invoke-virtual/range {v3 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->changeSliderToSingleMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Ljava/lang/Runnable;ZF)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->initTempModeLayout(I)V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 24
    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancelTouch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    return-void
.end method

.method public final checkSwitchMode(F)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v2, 0x42000000    # 32.0f

    .line 2
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v2, v4

    cmpl-float v2, p1, v2

    const/4 v5, 0x1

    if-lez v2, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V

    return v5

    :cond_2
    const/high16 v2, -0x3e000000    # -32.0f

    mul-float/2addr v4, v2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_4

    .line 4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V

    return v5

    :cond_4
    :goto_2
    return v3
.end method

.method public final getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F
    .locals 2

    .line 1
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x41000000    # 8.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public getButtonEvent(JJ)Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDirection(II)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 4
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    if-ne v1, p2, :cond_0

    .line 5
    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final getFlyDistance(F)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 9
    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    sub-float v5, v2, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 10
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v4, v2

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_0

    neg-float v2, v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 16
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 18
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p1, v2

    .line 19
    :cond_4
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    .line 21
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 22
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 23
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 24
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 4
    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    if-eqz v2, :cond_0

    return-object v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 9
    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v2, v0, :cond_2

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSelectedMode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    return p0
.end method

.method public final declared-synchronized initTempModeLayout(I)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTempModeText(I)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v4, v0

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 6
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v2, :cond_1

    if-eq v2, v11, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fadeOut()V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v4, v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->isNormalVideoCellTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v5, v0

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 11
    iput-boolean v11, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setAlpha(F)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fadeIn()V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    .line 17
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 18
    iput-boolean v1, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 19
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, p1, v0

    invoke-virtual/range {v2 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->changeSliderToSingleMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Ljava/lang/Runnable;ZF)V

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 22
    iput-boolean v11, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isNormalVideoCellTag(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public loadTexture()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->createSlider(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v2

    const/high16 v3, 0x42800000    # 64.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 7
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v5, v4, :cond_0

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 9
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 10
    invoke-virtual {v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fixed(FF)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 13
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-nez v5, :cond_2

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 15
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 16
    invoke-virtual {v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->fixed(FF)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    goto/16 :goto_2

    .line 17
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 19
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v5, 0x27

    if-ne v3, v5, :cond_4

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 21
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 22
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto/16 :goto_2

    .line 23
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 25
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v5, 0x28

    if-ne v3, v5, :cond_6

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 27
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 28
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_2

    .line 29
    :cond_7
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_a

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 32
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v3, :cond_9

    .line 33
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->isNormalVideoCellTag(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 34
    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 35
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 36
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_0

    .line 37
    :cond_a
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/high16 v3, 0x42f00000    # 120.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v5, v3

    .line 38
    iput v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 40
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 41
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 42
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_1

    .line 43
    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 44
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 45
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 46
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 47
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    const/16 v1, 0x3e8

    .line 48
    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 49
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 50
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 51
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 52
    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    .line 53
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 54
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 56
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 57
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->loadTexture()V

    .line 58
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 59
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    .line 60
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 64
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    .line 3
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    .line 6
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public moveTalkback()V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 12
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 14
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 16
    monitor-enter v3

    .line 17
    :try_start_0
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 18
    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-nez v7, :cond_3

    .line 19
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeOut()Z

    move-result v7

    if-nez v7, :cond_3

    .line 20
    iget-boolean v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    .line 21
    monitor-exit v3

    move v2, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 22
    :cond_5
    monitor-exit v3

    .line 23
    :goto_3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 24
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    const-string v3, "CAROUSEL_SELECT_INDEX"

    .line 26
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "LAYOUT_X"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "RELOAD_RIGHT"

    const/high16 v2, 0x42200000    # 40.0f

    .line 29
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4

    :cond_6
    const-string p0, "RELOAD_RIGHT"

    const/high16 v1, -0x40800000    # -1.0f

    .line 30
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 31
    :goto_4
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 32
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v3

    throw p0
.end method

.method public onDraw([F[F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 4
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    .line 6
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 7
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 8
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 9
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 10
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    mul-float/2addr v3, v7

    sub-float v8, v6, v3

    sub-float v11, v8, v4

    .line 11
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v9, 0x42400000    # 48.0f

    mul-float/2addr v8, v9

    add-float v12, v8, v11

    add-float/2addr v3, v6

    sub-float v13, v3, v4

    sub-float v14, v13, v8

    .line 12
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    .line 14
    iget v8, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v7

    sub-float v9, v6, v8

    sub-float v15, v9, v4

    add-float/2addr v8, v6

    sub-float v16, v8, v4

    .line 15
    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v3

    mul-float v17, v4, v7

    add-float v18, v17, v3

    .line 16
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v10, 0x4

    invoke-virtual/range {v9 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOpacity(IFFFFFFFF)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v10, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOpacity(IFFFFFFFF)V

    .line 18
    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 19
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDraw([F[F)V

    .line 20
    :cond_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 21
    iget-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 22
    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 23
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    :cond_4
    return-void
.end method

.method public onDrawFbo([F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    return-void
.end method

.method public onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectedMode()I

    move-result v0

    .line 4
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v0, p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result p1

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getDirection(II)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v3

    invoke-static {v2, v0, p1, v3}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->onPreDraw([F[F)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->hasAnim()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipDragSwitch:Z

    if-eqz v4, :cond_3

    :cond_2
    move v1, v3

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_4

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    if-eqz v4, :cond_4

    .line 5
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipGestureDetector:Z

    .line 6
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xb4

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v4, v2, :cond_12

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_12

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_5

    goto/16 :goto_6

    .line 9
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_11

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v1, :cond_6

    return v2

    .line 12
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 13
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipGestureDetector:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 14
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return v2

    .line 16
    :cond_8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_11

    .line 17
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    if-eqz v0, :cond_a

    if-ne v0, v5, :cond_9

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    :goto_2
    move v0, v2

    .line 18
    :goto_3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v1, v2, :cond_f

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v1, v4

    .line 21
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v5, v5, v8

    if-gez v5, :cond_b

    .line 22
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_d

    cmpl-float v1, v1, v4

    if-lez v1, :cond_c

    .line 23
    iput v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    goto :goto_4

    .line 24
    :cond_c
    iput v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    goto :goto_4

    :cond_d
    cmpl-float v1, v4, v1

    if-lez v1, :cond_e

    .line 25
    iput v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    goto :goto_4

    .line 26
    :cond_e
    iput v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    .line 27
    :cond_f
    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 28
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    if-eqz v0, :cond_10

    .line 29
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v1, v6, :cond_10

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 31
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->checkSwitchMode(F)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 32
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    goto :goto_5

    :cond_10
    if-nez v0, :cond_11

    .line 33
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v0, v7, :cond_11

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 35
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->checkSwitchMode(F)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 36
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    :cond_11
    :goto_5
    return v3

    .line 37
    :cond_12
    :goto_6
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    move v4, v3

    goto :goto_8

    :cond_14
    :goto_7
    move v4, v2

    :goto_8
    if-nez v4, :cond_25

    .line 38
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 39
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 40
    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/2addr v8, v2

    if-ne v8, v2, :cond_15

    move v8, v2

    goto :goto_9

    :cond_15
    move v8, v3

    :goto_9
    if-eqz v8, :cond_16

    .line 41
    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_a

    :cond_16
    move v4, v3

    :goto_a
    if-nez v4, :cond_17

    if-nez v1, :cond_17

    return v3

    :cond_17
    const/4 v1, 0x4

    if-nez v4, :cond_1a

    .line 42
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 43
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v2, :cond_1a

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1a

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLeftIgnoreArea:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRightIgnoreArea:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1a

    .line 47
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return v3

    .line 48
    :cond_18
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    .line 50
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    .line 51
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectedMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    .line 52
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz p1, :cond_19

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    .line 53
    :cond_19
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    return v3

    :cond_1a
    if-eqz v4, :cond_1c

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1c

    .line 55
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipGestureDetector:Z

    .line 56
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    .line 57
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 58
    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 59
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v3

    .line 60
    :cond_1b
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    .line 61
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 63
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectedMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    .line 65
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 66
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    return v2

    .line 67
    :cond_1c
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_20

    .line 68
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    .line 69
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    if-eqz v0, :cond_1e

    if-ne v0, v5, :cond_1d

    goto :goto_b

    :cond_1d
    move v0, v3

    goto :goto_c

    :cond_1e
    :goto_b
    move v0, v2

    :goto_c
    if-eqz v0, :cond_1f

    .line 70
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v0, v6, :cond_1f

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->checkSwitchMode(F)Z

    .line 72
    :cond_1f
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    .line 73
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 74
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return v3

    .line 75
    :cond_20
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    if-eqz v0, :cond_25

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_21

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_25

    .line 78
    :cond_21
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_22

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 82
    :cond_22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 83
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 84
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 85
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 86
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-eqz p1, :cond_23

    .line 87
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;I)V

    .line 88
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 89
    monitor-enter p1

    .line 90
    :try_start_0
    iput-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mCancelListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;

    .line 91
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p1

    goto :goto_d

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 93
    :cond_23
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    .line 94
    :cond_24
    :goto_d
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 95
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_25
    return v4
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    :cond_0
    return-void
.end method

.method public reverseColor(Z)V
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    .line 3
    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    .line 4
    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v4, v3, :cond_0

    .line 5
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    .line 6
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 8
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v3, v0, :cond_2

    .line 9
    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    .line 10
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 12
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mReverseColor:Z

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    .line 14
    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    .line 15
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
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

.method public setDisplayOrientation(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOrientation(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 7
    :cond_3
    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    return-void
.end method

.method public setSize(Lcom/motorola/camera/PreviewSize;Z)V
    .locals 11

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLeftIgnoreArea:F

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v0, v3

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRightIgnoreArea:F

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLeftIgnoreArea:F

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRightIgnoreArea:F

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v0

    .line 9
    iget v2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v0, v1

    add-float v8, v0, v2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 13
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b001f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v5, p2

    .line 14
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;

    invoke-direct {v4, p0, p1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/PreviewSize;F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget v7, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 17
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 18
    iput-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    invoke-virtual {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0, p1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0, p1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    :goto_1
    return-void
.end method

.method public declared-synchronized setVisibility(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderLeftMode(I)I

    move-result v2

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v5

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    if-eq v5, v6, :cond_1

    if-ne v5, v1, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    if-ne v1, v6, :cond_2

    move v3, v7

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v5

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    move v3, v6

    :goto_0
    if-ltz v8, :cond_4

    .line 8
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 10
    :cond_4
    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v3

    :goto_2
    xor-int/lit8 v4, p2, 0x1

    .line 11
    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne p1, v5, :cond_5

    move v1, v6

    :cond_5
    if-eqz v4, :cond_9

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    if-ne p1, v5, :cond_7

    return-void

    :cond_7
    if-ne v3, v7, :cond_8

    return-void

    :cond_8
    move v6, v1

    move v2, v3

    goto :goto_4

    :cond_9
    if-eq p1, v0, :cond_c

    if-ne p1, v5, :cond_a

    goto :goto_3

    :cond_a
    if-ne v2, v7, :cond_b

    return-void

    :cond_b
    move v6, v1

    goto :goto_4

    .line 12
    :cond_c
    :goto_3
    invoke-static {v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderLeftMode(I)I

    move-result v2

    :goto_4
    if-eqz p2, :cond_d

    .line 13
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    goto :goto_5

    :cond_d
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    .line 14
    :goto_5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 15
    invoke-static {p2, v6, v2, p1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 p1, 0x4

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void

    :cond_e
    :goto_6
    const-string p0, "ModesSliderTexture"

    const-string/jumbo p1, "switchToDrag ignore"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unloadTexture()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->unloadTexture()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 10
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result p1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr p0, v1

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    return-void
.end method

.method public updateLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->createSlider(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 6
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 7
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->isDefaultSlider()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 12
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 13
    iput v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 14
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/16 v4, 0x3e8

    if-nez v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 17
    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 18
    iput v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 19
    iput v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 21
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 22
    iput-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    .line 23
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    new-array v5, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 24
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v1, :cond_3

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_4

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOrientation(I)V

    .line 26
    :cond_4
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSingleModeCell(I)V

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 29
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 30
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    return-void
.end method

.method public final updateLayout(Lcom/motorola/camera/PreviewSize;F)V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    .line 32
    invoke-virtual {p0, v1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 34
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 35
    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    sub-float/2addr p1, v3

    invoke-virtual {v0, p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 40
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p1

    .line 41
    iget p1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, v2

    const/high16 v0, 0x42480000    # 50.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v2, v0

    add-float/2addr v2, p1

    .line 42
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 43
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_1
    return-void
.end method

.method public updateSingleModeCell(I)V
    .locals 6

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->isDefaultMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 5
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v5, :cond_1

    if-eq v5, v0, :cond_1

    .line 6
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iput-boolean v1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 10
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    .line 11
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v1

    .line 12
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTempModeText(I)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 19
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v4, :cond_4

    if-eq v4, v0, :cond_4

    .line 20
    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 21
    iput-boolean v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    goto :goto_2

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 23
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 24
    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void
.end method

.method public declared-synchronized updateSliderPosText(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    const/16 v3, 0x9

    const/16 v4, 0x1f

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    move v0, v3

    .line 5
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    move v0, v2

    :cond_2
    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    .line 7
    :goto_1
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->initTempModeLayout(I)V

    goto :goto_3

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected(Z)V

    .line 10
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSingleModeCell(I)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p1

    .line 13
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 15
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p1, :cond_5

    .line 16
    :try_start_2
    monitor-exit v0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 17
    monitor-exit v0

    :goto_2
    if-eqz v2, :cond_7

    const/4 p1, 0x1

    .line 18
    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSliderTag()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 5
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v4, 0x1f

    const/16 v5, 0x18

    if-ne v3, v5, :cond_1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iput v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto :goto_0

    :cond_2
    const/16 v4, 0x12

    const/4 v5, 0x6

    if-ne v3, v5, :cond_3

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto :goto_0

    :cond_3
    if-ne v3, v4, :cond_0

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    iput v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateTalkback(Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 9
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    .line 10
    :goto_0
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 11
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 13
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 14
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 15
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 16
    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 18
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v3, v6

    sub-float/2addr v5, v3

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v3, v5

    .line 20
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 21
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 22
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 23
    iget-boolean v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-nez v8, :cond_3

    .line 24
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeOut()Z

    move-result v8

    if-nez v8, :cond_3

    .line 25
    iget-boolean v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    if-eqz v8, :cond_4

    move v4, v6

    .line 26
    :cond_4
    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_5

    .line 27
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v9, 0x7f120447

    .line 28
    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v7

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    float-to-int v8, v7

    .line 32
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const-string v5, "CAROUSEL_SELECT_INDEX"

    .line 33
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "CAROUSEL_WIDTH"

    .line 34
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "LAYOUT_X"

    .line 35
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "CAROUSEL_TEXT"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "RELOAD_RIGHT"

    if-eqz p1, :cond_7

    const/high16 p1, 0x42200000    # 40.0f

    .line 38
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4

    :cond_7
    const/high16 p0, -0x40800000    # -1.0f

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 40
    :goto_4
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 41
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public updateTempModeText(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->getStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 8
    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 9
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 14
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f12036b

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 18
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 19
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f120368

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
