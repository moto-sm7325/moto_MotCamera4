.class public Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ControlPanelStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoStabilizationSetupRunnable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 8
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 9
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p3

    if-eqz p3, :cond_1

    if-nez p0, :cond_1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 13
    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationSupported()Z

    move-result p0

    .line 14
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 16
    iget-object v2, p3, Lcom/motorola/camera/settings/Setting;->mCacheBehavior:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v2, p3, v1}, Lcom/motorola/camera/settings/CacheBehavior;->performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 18
    :goto_1
    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 19
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    .line 21
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p3

    if-nez p3, :cond_5

    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    .line 22
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusWithVSTBSupported()Z

    move-result p0

    if-nez p0, :cond_7

    .line 24
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 25
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p0

    if-nez p0, :cond_8

    .line 27
    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 28
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
