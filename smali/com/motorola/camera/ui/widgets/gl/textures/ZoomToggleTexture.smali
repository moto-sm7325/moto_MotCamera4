.class public Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "ZoomToggleTexture.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;
    }
.end annotation


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mBannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

.field public mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mClickable:Z

.field public mCurrentValueX:F

.field public mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

.field public mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mLoaded:Z

.field public mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mPortraitCloseUpZoomValue:F

.field public mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mPortraitStandardZoomValue:F

.field public mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mPortraitWideZoomValue:F

.field public mRtl:Z

.field public mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mTeleZoomValue:F

.field public final mToggleTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mUwZoomValue:F

.field public mValueX:Ljava/lang/String;

.field public mVideoRecording:Z

.field public mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

.field public mWideZoomValue:F

.field public mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    .line 7
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListeners:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 10
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    .line 14
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 15
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    return-void
.end method

.method public static access$1000(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x0

    if-eqz v2, :cond_5

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 4
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/motorola/camera/VideoFormat;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    .line 7
    invoke-direct {v4, v2, v5, v13}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    .line 8
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    .line 9
    iget-object v5, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 10
    invoke-virtual {v5, v3, v4, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;Lcom/motorola/camera/settings/CameraType;)V

    .line 11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const-string v4, "BANNER_SWITCH"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "SETTING"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const-string v3, "MODE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v3, "SETTING_UPDATE_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "VIDEO_STABILIZATION"

    .line 16
    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->configureZoomHDR10ConflictPrompt()V

    goto/16 :goto_6

    .line 21
    :cond_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-ne v1, v5, :cond_2

    const v3, 0x7f12053f

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v3, 0x7f120540

    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 25
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f12053d

    goto :goto_1

    :cond_3
    const v6, 0x7f12053e

    :goto_1
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v5, :cond_4

    const v1, 0x7f0801b5

    goto :goto_2

    :cond_4
    const v1, 0x7f0801b6

    .line 26
    :goto_2
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 27
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    .line 28
    iput-object v3, v4, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    .line 29
    iput-object v6, v4, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    .line 30
    iput-object v1, v4, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f12053c

    .line 31
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;)V

    invoke-virtual {v4, v1, v3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    const v0, 0x7f1204fb

    .line 32
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda2;

    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    .line 33
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 34
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 35
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f1204d3

    goto :goto_3

    :cond_6
    const v0, 0x7f1204bc

    :goto_3
    move v10, v0

    .line 36
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 37
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v14, 0x3

    const/16 v17, 0x0

    .line 38
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v6

    const/16 v7, 0x7d0

    .line 39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v6, :cond_b

    const/4 v11, 0x3

    if-eq v6, v11, :cond_a

    const/4 v5, 0x4

    if-eq v6, v5, :cond_8

    const/4 v3, 0x5

    if-eq v6, v3, :cond_7

    move v12, v2

    goto :goto_5

    :cond_7
    const/16 v2, 0xbb8

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v12, v11

    goto :goto_5

    .line 41
    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 42
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v12, v5

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_4
    move v12, v3

    move-object v4, v7

    :goto_5
    if-nez v4, :cond_c

    const/16 v2, 0xfa0

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 44
    :cond_c
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v7, 0x1

    .line 45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v18, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v18}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 46
    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public final cancelTogglesTouchEvent()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cancelTouch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    return-void
.end method

.method public final configureZoomHDR10ConflictPrompt()V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f12024a

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f12024b

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v3, 0x7f120196

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 6
    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f120193

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v6

    .line 7
    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1

    const v1, 0x7f08016d

    goto :goto_1

    :cond_1
    const v1, 0x7f08016e

    :goto_1
    const/4 v7, 0x0

    .line 8
    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 9
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v7}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    .line 10
    iput-object v3, v7, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    .line 11
    iput-object v5, v7, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    .line 12
    iput-object v1, v7, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-boolean v4, v7, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->sustainWhileChangingMode:Z

    const v1, 0x7f1200f2

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda3;

    invoke-virtual {v7, v1, v3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    const v3, 0x7f120194

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;)V

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    return-void
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public getRect()Lcom/google/gson/FieldAttributes;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr p0, v1

    .line 3
    new-instance v1, Lcom/google/gson/FieldAttributes;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v5, v0, v4

    div-float/2addr v2, v4

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/google/gson/FieldAttributes;-><init>(FFFF)V

    neg-float p0, p0

    .line 4
    invoke-virtual {v1, p0, p0}, Lcom/google/gson/FieldAttributes;->inset(FF)V

    return-object v1
.end method

.method public final getValueX(FZ)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1
    div-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    :cond_0
    rem-int/lit8 p1, v0, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    .line 7
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_PATTERN_NO_X:Ljava/lang/String;

    new-array p1, v3, [Ljava/lang/Object;

    .line 8
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object p2

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 9
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initZoomValue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    .line 7
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 11
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_1

    .line 14
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_2

    .line 17
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_3

    .line 20
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_4

    .line 23
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p0

    .line 24
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public loadTexture()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    .line 5
    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v2, 0x3ecccccd    # 0.4f

    .line 7
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 8
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    const/4 v3, 0x0

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_0

    .line 12
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p0, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 13
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_1

    .line 16
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p0, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 17
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p0, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 21
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_5

    .line 23
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    .line 24
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_4

    .line 27
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    .line 32
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 35
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    goto :goto_0

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_8

    .line 40
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 41
    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 45
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_b

    .line 46
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 47
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_c

    .line 48
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 49
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_d

    .line 50
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 51
    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 53
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    if-eqz p3, :cond_0

    .line 2
    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz p4, :cond_1

    const/high16 p4, -0x40800000    # -1.0f

    mul-float/2addr p3, p4

    .line 4
    :cond_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/DragBehavior;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p4, p2, p3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_5
    return-void
.end method

.method public onLongPress(ZLandroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p2, :cond_0

    .line 2
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_3

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_3

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p2, :cond_2

    .line 6
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_3

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p2, :cond_4

    .line 8
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz p2, :cond_4

    :cond_3
    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    iput-boolean p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    .line 13
    iget-boolean p3, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_6
    const/4 p3, 0x0

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p4, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 15
    iput-boolean p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_8

    .line 17
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const/4 p2, 0x1

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    .line 18
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 19
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_7
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean p4, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    if-nez p4, :cond_8

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTouch()V

    .line 22
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const-wide/16 p4, 0x5dc

    invoke-virtual {p1, p3, p4, p5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    .line 24
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 25
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    const-wide/16 p3, 0x6a4

    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/motorola/camera/Notifier;->postNotifyDelayed(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;J)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getIconSelectedRes()I

    move-result p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->onPreDraw()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    :cond_2
    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 4
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v3, :cond_7

    .line 10
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v3, v4

    goto :goto_0

    :cond_7
    move v3, v1

    .line 11
    :goto_0
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    if-nez v5, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleTouchUp()V

    goto :goto_1

    .line 14
    :cond_9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    move v1, v4

    :cond_b
    return v1
.end method

.method public onVideoStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V

    return-void
.end method

.method public onZoomChanged(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;FZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    move p1, v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p1

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    move p1, v1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 12
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public setPreRotation(FFFF)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 p0, 0x2

    .line 3
    iput p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 4
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 5
    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method

.method public final setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
    .locals 7

    .line 1
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v3, ""

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;Ljava/lang/Float;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getIconRes()I

    move-result p0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mUnselectedIconRes:Ljava/lang/Integer;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v6, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    return-object v6
.end method

.method public showHDR10Banner()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    :cond_0
    return-void
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_6
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    :cond_7
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v3, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v4, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v5, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v6, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v7, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v8, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 2
    iput-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    .line 4
    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v9

    .line 5
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v10, 0x3e99999a    # 0.3f

    if-eqz v9, :cond_0

    .line 7
    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v9

    .line 8
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v11, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 10
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 11
    :cond_0
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v9, :cond_1

    .line 12
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v9

    .line 13
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v11, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 15
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 16
    :cond_1
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v10, 0x7f080267

    invoke-virtual {v0, v9, v1, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 17
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v10, 0x7f0801e7

    invoke-virtual {v0, v9, v1, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 18
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v10, 0x7f0801e9

    invoke-virtual {v0, v9, v1, v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 19
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v10, 0x7f0801eb

    invoke-virtual {v0, v9, v1, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 20
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_7

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 23
    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->isTraditionProModeZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 25
    iput v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 26
    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 27
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_4

    .line 28
    iput v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 29
    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 30
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_8

    .line 31
    iput v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 32
    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    goto :goto_2

    .line 33
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 34
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 35
    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v11, 0x7f08026e

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_6

    .line 38
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 39
    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 40
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v11, 0x7f08026c

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 41
    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_8

    .line 42
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 43
    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 44
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v11, 0x7f08026a

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    goto :goto_2

    .line 45
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 46
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 47
    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 48
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v11, 0x7f080269

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 49
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_8

    .line 50
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 51
    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    .line 52
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const v11, 0x7f080268

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 53
    :cond_8
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_9
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_a
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_b
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_c
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 59
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_d
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 61
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_e
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 63
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 65
    iput v10, v12, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_3

    .line 66
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/high16 v12, 0x42200000    # 40.0f

    const/4 v13, 0x0

    if-ne v11, v10, :cond_11

    .line 67
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 68
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v9, 0x4

    .line 69
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_4

    :cond_11
    if-le v11, v10, :cond_12

    .line 70
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v14, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 71
    iget v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    mul-float/2addr v14, v12

    .line 72
    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v12, v11

    mul-float/2addr v12, v14

    invoke-virtual {v15, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 73
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    .line 74
    iput v14, v12, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/high16 v14, 0x3f800000    # 1.0f

    .line 75
    invoke-virtual {v12, v14, v14, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 76
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 77
    iput v9, v12, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    sub-int/2addr v11, v10

    .line 78
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v9, 0x3

    .line 79
    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    .line 80
    :cond_12
    :goto_4
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v1, v9

    .line 81
    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz v9, :cond_13

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v1, v9

    .line 82
    :cond_13
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveZoomEntityMap()Ljava/util/Map;

    move-result-object v9

    .line 83
    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v11

    sub-int/2addr v11, v10

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 84
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_14

    .line 85
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    neg-float v13, v11

    invoke-virtual {v6, v13, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    :cond_14
    move v10, v13

    .line 86
    :goto_5
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 87
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    int-to-float v7, v10

    mul-float/2addr v7, v1

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v10, v10, 0x1

    .line 88
    :cond_15
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 89
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    int-to-float v7, v10

    mul-float/2addr v7, v1

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v10, v10, 0x1

    .line 90
    :cond_16
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 91
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    int-to-float v6, v10

    mul-float/2addr v6, v1

    sub-float/2addr v6, v11

    invoke-virtual {v2, v6, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v10, v10, 0x1

    .line 92
    :cond_17
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 93
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    int-to-float v5, v10

    mul-float/2addr v5, v1

    sub-float/2addr v5, v11

    invoke-virtual {v2, v5, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v10, v10, 0x1

    .line 94
    :cond_18
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 95
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    int-to-float v4, v10

    mul-float/2addr v4, v1

    sub-float/2addr v4, v11

    invoke-virtual {v2, v4, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v10, v10, 0x1

    .line 96
    :cond_19
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 97
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    int-to-float v2, v10

    mul-float/2addr v2, v1

    sub-float/2addr v2, v11

    invoke-virtual {v0, v2, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1a
    return-void
.end method

.method public updateToggleTexVisibleType$enumunboxing$(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    move v1, p1

    goto :goto_1

    .line 3
    :cond_1
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
