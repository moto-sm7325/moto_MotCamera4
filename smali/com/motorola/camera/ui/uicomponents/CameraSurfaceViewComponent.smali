.class public Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "CameraSurfaceViewComponent.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackgroundColorAnimator:Landroid/animation/Animator;

.field public mBlackFrame:Landroid/view/View;

.field public mBlurState:I

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

.field public final mPreviewChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/PreviewChange;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mZoomBarBackground:Landroid/view/View;

.field public final mZoomListener:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlurState:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBackgroundColorAnimator:Landroid/animation/Animator;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 10
    invoke-static {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mZoomListener:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
.method public final animateModeSwitch()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/PreviewChange;

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    .line 5
    iget v4, v1, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 6
    move-object v6, v3

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 8
    iget v7, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v6, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    div-float/2addr v7, v6

    goto :goto_0

    :cond_0
    div-float v7, v6, v7

    .line 9
    :goto_0
    iget-boolean v6, v1, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 10
    invoke-static {v4, v5, v7, v6, v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v2

    .line 11
    invoke-static {v3}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v4

    .line 12
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v5

    .line 13
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v11, v0

    if-eqz v4, :cond_1

    div-float v0, v11, v2

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    if-eqz v4, :cond_2

    move v10, v11

    goto :goto_2

    :cond_2
    mul-float v0, v9, v2

    move v10, v0

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v13

    .line 15
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 17
    new-instance v5, Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v0

    div-float/2addr v6, v2

    float-to-int v2, v6

    invoke-direct {v5, v0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    if-eqz v4, :cond_3

    move v12, v13

    goto :goto_3

    .line 18
    :cond_3
    iget v0, v1, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    invoke-interface {v3, v0, v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result v0

    neg-float v0, v0

    move v12, v0

    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 19
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 20
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;FFFFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$1;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;Lcom/motorola/camera/ui/PreviewChange;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final applyPreviewChange(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    const/high16 v2, 0x41400000    # 12.0f

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 4
    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v3, v2

    .line 5
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->setSurfaceViewCorner(F)V

    .line 6
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 7
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 8
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 9
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v3, Landroid/util/Size;

    invoke-direct {v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 11
    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 13
    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 14
    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    neg-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setTranslationY(F)V

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    neg-float p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final darkenPreview(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    const p1, 0x3f333333    # 0.7f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
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

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

.method public inflateViewStub()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a02e8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a045f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mZoomBarBackground:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    return-void
.end method

.method public final initSurface()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->WAIT_FOR_SURFACE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    move-object v6, v0

    check-cast v6, Landroid/util/Size;

    .line 8
    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 13
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    .line 14
    invoke-interface {v0, v8}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->applyPreviewChange(Z)V

    return-void
.end method

.method public final previewModeChange(IIZZZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    .line 2
    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 3
    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 4
    iput-boolean p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    .line 5
    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 6
    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized registerListener(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mZoomListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V
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

.method public final requestBlurPreview()V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/Size;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0, v2, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showZoomBarBackground(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mZoomBarBackground:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12
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
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    .line 2
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_b

    .line 3
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 7
    iget-object v4, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 8
    invoke-virtual {v4, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 9
    iget-object v1, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 10
    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 11
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 14
    iget-object v4, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 15
    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v4

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    const/4 v9, -0x1

    const-string v10, "MODE"

    .line 17
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_1

    move v10, v8

    :cond_1
    const-string v11, "FROM_FACING"

    .line 18
    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_2

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v1

    .line 20
    :cond_2
    sget-object v11, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v4, v11, :cond_4

    if-ne v1, v6, :cond_3

    move v11, v7

    goto :goto_0

    :cond_3
    move v11, v6

    goto :goto_0

    :cond_4
    move v11, v1

    .line 21
    :goto_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 22
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 23
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "BANNER_SWITCH"

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    .line 25
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->ENTER_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    if-eq v0, v2, :cond_6

    if-nez v0, :cond_5

    .line 26
    invoke-static {v10, v11}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v6

    :goto_2
    if-nez v0, :cond_7

    .line 27
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 28
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 29
    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    .line 30
    iput v9, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlurState:I

    if-eqz v0, :cond_8

    .line 31
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    :cond_8
    invoke-static {v8, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v4, v0, :cond_9

    move v3, v6

    goto :goto_3

    :cond_9
    move v3, v7

    :goto_3
    new-array v0, v5, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    .line 34
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v0, v6

    invoke-static {v4, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/Constants$UseCase;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v10

    move v2, v11

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->previewModeChange(IIZZZ)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    :goto_4
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 39
    :cond_b
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 40
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 41
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 43
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 45
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 46
    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 47
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 48
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 49
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 50
    :cond_d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 51
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 54
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->registerListener(Z)V

    .line 56
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 57
    :cond_e
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 58
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 59
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 60
    :cond_f
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 62
    check-cast v0, Landroid/util/Size;

    .line 63
    new-instance v1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;Landroid/util/Size;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 65
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 66
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->initSurface()V

    goto/16 :goto_5

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->WAIT_FOR_SURFACE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 68
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 69
    :cond_11
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 70
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 71
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0x3e8

    .line 72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->previewModeChange(IIZZZ)V

    .line 74
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 75
    :cond_12
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 76
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 77
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->previewModeChange(IIZZZ)V

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 82
    :cond_13
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 83
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 84
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 85
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 86
    :cond_14
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 87
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 88
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 90
    :cond_15
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 91
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 92
    :cond_16
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 93
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 94
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 95
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->registerListener(Z)V

    :cond_17
    :goto_5
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->WAIT_FOR_SURFACE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->initSurface()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public viewStubInflationStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
