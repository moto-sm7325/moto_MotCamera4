.class public Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "FrontDisplayFlash.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mAutoTriggerTimer:Ljava/util/Timer;

.field public mCct:I

.field public mCctMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDensity:F

.field public final mDisabledRunnable:Ljava/lang/Runnable;

.field public mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

.field public mEnableAutoTrigger:Z

.field public mEnableCountDownTimer:Z

.field public mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

.field public mFlashColor:I

.field public mFlashFired:Z

.field public mIsCapturing:Z

.field public mIsControlPanelOpened:Z

.field public mMaxAlpha:F

.field public mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

.field public mSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mShouldMonitorLux:Z

.field public mStoredBrightness:F

.field public mTurnOffLux:F

.field public mTurnOnLux:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    .line 7
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    .line 8
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 9
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 10
    invoke-static {p2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    .line 11
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 12
    new-instance p2, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisabledRunnable:Ljava/lang/Runnable;

    .line 13
    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    aget v1, v0, p1

    .line 14
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mTurnOnLux:F

    const/4 v1, 0x1

    .line 15
    aget v0, v0, v1

    .line 16
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mTurnOffLux:F

    .line 17
    iget v0, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:I

    .line 18
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashColor:I

    .line 19
    iget p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAlpha:F

    .line 20
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mMaxAlpha:F

    .line 21
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCctMap:Ljava/util/TreeMap;

    .line 22
    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashCctTable:Ljava/lang/String;

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ";"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move v0, p1

    .line 25
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 26
    aget-object v2, p2, v0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mCctMap:Ljava/util/TreeMap;

    aget-object v4, v2, p1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public checkEnableAutoTrigger()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    :goto_0
    return-void
.end method

.method public final defaultDisplayFlash()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    const/high16 v2, 0x42080000    # 34.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setLineWidth(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->isTripodMode:Z

    .line 4
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 8
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setModuleSizes(FF)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setModuleSizes(FF)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setModuleSizes(FF)V

    .line 13
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->isControlPanelOpened(Z)V

    return-void
.end method

.method public final enableDisplayFlash(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->showDisplayFlash()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    :cond_1
    :goto_0
    const-string p0, "IS_SELECTED"

    .line 6
    invoke-static {p0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 8
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

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

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FrontDisplayFlash"

    return-object p0
.end method

.method public final declared-synchronized hideFlash()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/DialogPopup$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isControlPanelOpened(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mBottomAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setHollowSize(FF)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 8
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v0, Landroid/util/Size;

    invoke-direct {p1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 11
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setHollowSize(FF)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, p0

    int-to-float p0, p0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p0, v1

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setHollowSize(FF)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    throw p0

    :cond_3
    :goto_1
    return-void
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

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashColor:I

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    .line 3
    monitor-enter v0

    .line 4
    monitor-exit v0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v3, Lcom/google/gson/FieldAttributes;

    neg-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float v6, v1, v5

    div-float/2addr v2, v5

    neg-float v1, v1

    div-float/2addr v1, v5

    invoke-direct {v3, v4, v6, v2, v1}, Lcom/google/gson/FieldAttributes;-><init>(FFFF)V

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/gson/FieldAttributes;

    .line 8
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setRect(Lcom/google/gson/FieldAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    monitor-exit v0

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    mul-float/2addr v2, v1

    .line 11
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRadius:F

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout21_9()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x42400000    # 48.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42080000    # 34.0f

    .line 14
    :goto_0
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    mul-float/2addr v2, v3

    .line 15
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setLineWidth(F)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    .line 18
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    .line 19
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F[F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
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
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    return p0
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->tripodDisplayFlash(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->defaultDisplayFlash()V

    :goto_0
    return-void
.end method

.method public final showDisplayFlash()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->tripodDisplayFlash(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->defaultDisplayFlash()V

    .line 5
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 2
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/AppExtensionsKt;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 9
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    .line 10
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    goto/16 :goto_3

    .line 11
    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 14
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 15
    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_a

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 16
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 18
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    goto/16 :goto_3

    .line 21
    :cond_4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    iget-object v2, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 23
    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 25
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 26
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 27
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mStoredBrightness:F

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    .line 32
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 34
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->checkEnableAutoTrigger()V

    goto/16 :goto_3

    .line 36
    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->checkEnableAutoTrigger()V

    goto/16 :goto_3

    .line 38
    :cond_6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 39
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz v1, :cond_8

    .line 41
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    .line 42
    :cond_8
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsControlPanelOpened:Z

    .line 43
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    .line 44
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    .line 45
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 46
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mAutoTriggerTimer:Ljava/util/Timer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 47
    :cond_9
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 48
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 49
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 50
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnvListener:Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    .line 51
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mPanelTriggeredListener:Lcom/motorola/camera/Notifier$Listener;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p1, v0}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 53
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_3

    .line 54
    :cond_a
    :goto_0
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    .line 55
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    if-eqz v0, :cond_b

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisabledRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableCountDownTimer:Z

    .line 58
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->enableDisplayFlash(Z)V

    .line 59
    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-nez p1, :cond_10

    .line 62
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    goto :goto_3

    .line 63
    :cond_c
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    .line 64
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V

    goto :goto_3

    .line 65
    :cond_d
    :goto_2
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 66
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mIsCapturing:Z

    .line 67
    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mShouldMonitorLux:Z

    .line 68
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 69
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 71
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->showDisplayFlash()V

    goto :goto_3

    .line 72
    :cond_f
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 73
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mFlashFired:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->hideFlash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_10
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final tripodDisplayFlash(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDensity:F

    const/high16 v2, 0x41880000    # 17.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setLineWidth(F)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->isTripodMode:Z

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p1, v1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setModuleSizes(FF)V

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setHollowSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
