.class public Lcom/motorola/camera/Controller$1;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Controller;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
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

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

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

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 10
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iget-object v1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/motorola/camera/Util;->isProductWhiteLabel()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1200de

    goto :goto_0

    :cond_0
    const v2, 0x7f1200dd

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    .line 10
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1200df

    .line 11
    invoke-virtual {p0, v0, p1, v5, v4}, Lcom/motorola/camera/Controller;->createErrorDialog(ILjava/lang/String;ZZ)V

    goto/16 :goto_6

    .line 12
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1, v5}, Lcom/motorola/camera/settings/SettingsManager;->isExternalCamera(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {p0}, Lcom/motorola/camera/Controller;->access$100(Lcom/motorola/camera/Controller;)V

    goto/16 :goto_6

    .line 15
    :cond_2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 16
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 17
    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 19
    iput-boolean v4, p1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 22
    iput-boolean p1, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    goto/16 :goto_6

    .line 23
    :cond_4
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 28
    :cond_5
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 31
    sget-object p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda4;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 32
    :cond_6
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 34
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 36
    :cond_7
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 37
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 38
    iput-boolean v5, v2, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    .line 39
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 40
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 41
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "IS_CLI_DISPLAY"

    .line 42
    iget-object v2, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 43
    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 45
    :cond_8
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 46
    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/Controller$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 48
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 49
    sget-object p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 50
    :cond_9
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 51
    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 52
    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 53
    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 54
    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_3

    .line 55
    :cond_a
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 56
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Controller;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 58
    :cond_b
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_c

    .line 59
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 60
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 61
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 62
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_26

    .line 63
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 64
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 66
    iput-object v8, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 68
    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->saveNewIntent(Landroid/content/Intent;)V

    .line 69
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 70
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 71
    sget-object p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 72
    :cond_c
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 73
    iget v7, v3, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_d

    .line 74
    iput v5, v3, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 75
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 76
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 77
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_26

    const-string v0, "LOADING_COMPLETE"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 79
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 80
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_6

    .line 81
    :cond_d
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 82
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 83
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    goto/16 :goto_6

    .line 84
    :cond_e
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 85
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 86
    iput-boolean v5, p1, Lcom/motorola/camera/Controller;->mIsIdle:Z

    .line 87
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 88
    iput-boolean v5, p1, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    .line 89
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 90
    iget-boolean v0, p1, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_10

    .line 91
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    .line 92
    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 93
    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait$enumunboxing$()I

    move-result p1

    if-ne p1, v2, :cond_f

    move p1, v5

    goto :goto_1

    :cond_f
    move p1, v4

    :goto_1
    if-eqz p1, :cond_12

    .line 94
    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 95
    iget-boolean v0, p1, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-nez v0, :cond_13

    .line 96
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    .line 97
    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 98
    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait$enumunboxing$()I

    move-result p1

    if-ne p1, v2, :cond_11

    move v4, v5

    :cond_11
    if-eqz v4, :cond_13

    .line 99
    :cond_12
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 100
    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 101
    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 102
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 103
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 104
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/Controller$1;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x12c

    .line 106
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catch_0
    :cond_13
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 108
    iput v5, p1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 109
    iget-boolean p1, p1, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    if-eqz p1, :cond_14

    .line 110
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez p1, :cond_15

    .line 111
    :cond_14
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 112
    iput-boolean v5, p1, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    .line 113
    :cond_15
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 114
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_16

    .line 115
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 116
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 118
    iput-object v8, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 120
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 121
    new-instance v2, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    :cond_16
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {p0}, Lcom/motorola/camera/Controller;->access$1500(Lcom/motorola/camera/Controller;)V

    goto/16 :goto_6

    .line 123
    :cond_17
    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 124
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 125
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 126
    iget-boolean p1, p1, Lcom/motorola/camera/settings/SettingsManager;->mHasExternalCamera:Z

    if-eqz p1, :cond_18

    const-string p1, "MotoCameraController"

    const-string/jumbo v0, "stateChanged: unsupported sensor"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {p0}, Lcom/motorola/camera/Controller;->access$100(Lcom/motorola/camera/Controller;)V

    goto/16 :goto_6

    .line 129
    :cond_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result p1

    if-lez p1, :cond_26

    .line 130
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasAllPhysicalCameras()Z

    move-result p1

    if-nez p1, :cond_26

    .line 131
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "MotoCameraController"

    const-string/jumbo v0, "stateChanged: sensor missing, getNumberOfCameras: %d"

    new-array v2, v5, [Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 133
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 135
    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog1(Z)V

    goto/16 :goto_6

    .line 136
    :cond_19
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 137
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 138
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 139
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "FACING"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "FACING"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 142
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 143
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog1(Z)V

    goto/16 :goto_6

    .line 144
    :cond_1a
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 145
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog1(Z)V

    goto/16 :goto_6

    .line 146
    :cond_1b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 147
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 148
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 149
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 150
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_2

    .line 151
    :cond_1c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 152
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 153
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 154
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "FINISH_APP"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "error_message"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 158
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    const v0, 0x7f1200da

    .line 159
    invoke-virtual {p0, v0, p1, v5, v5}, Lcom/motorola/camera/Controller;->createErrorDialog(ILjava/lang/String;ZZ)V

    goto/16 :goto_6

    .line 160
    :cond_1d
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 161
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6

    .line 163
    :cond_1e
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 164
    iput-boolean v5, v0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    .line 165
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v0, :cond_1f

    .line 166
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 167
    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    goto/16 :goto_6

    .line 168
    :cond_1f
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 169
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 170
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 171
    :cond_20
    iget-object p1, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    const/4 v0, 0x2

    .line 172
    iput v0, p1, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    .line 173
    :cond_21
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p1

    xor-int/2addr p1, v5

    .line 174
    iput-boolean p1, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    goto/16 :goto_6

    .line 175
    :cond_22
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 176
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 177
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 178
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 179
    invoke-static {p0, p1}, Lcom/motorola/camera/Controller;->access$600(Lcom/motorola/camera/Controller;Landroid/os/Bundle;)V

    goto :goto_6

    .line 180
    :cond_23
    :goto_4
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 181
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 182
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "error_retry"

    .line 183
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 184
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 185
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 186
    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 187
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 188
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "ACTIVITY_RESULT"

    .line 189
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    .line 190
    check-cast p0, Lcom/motorola/camera/Camera;

    if-eqz v3, :cond_25

    .line 191
    iget-object v4, v3, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_24

    .line 192
    iget v3, v3, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    .line 193
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    .line 194
    :cond_24
    iget v3, v3, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    .line 195
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 196
    :cond_25
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    .line 197
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 198
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 199
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 200
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 201
    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 202
    iget-object p1, p1, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 204
    :cond_26
    :goto_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
