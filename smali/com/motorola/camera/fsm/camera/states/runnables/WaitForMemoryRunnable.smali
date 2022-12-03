.class public Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "WaitForMemoryRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;
    }
.end annotation


# instance fields
.field public final mShotType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    return-void
.end method

.method public static handleStorageFull()V
    .locals 2

    .line 8
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getCurrentMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "mediaVolume"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull(Ljava/lang/Integer;)V

    return-void
.end method

.method public static handleStorageFull(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    .line 2
    sget-object p0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$fsm$camera$states$runnables$WaitForMemoryRunnable$$InternalSyntheticLambda$1$18adf87a13d0257b80eeb55715c4ae84b2d499b9bcc101ea3ac319e5b0cd2f12$0:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    .line 3
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x1040009

    .line 4
    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 5
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 6
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    .line 4
    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Lcom/motorola/camera/ShotType;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RECORD:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance p3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f1200d4

    invoke-direct {p3, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 8
    invoke-virtual {p3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p3

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1, p3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 11
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_3

    .line 12
    :cond_0
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$1;)V

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-static {v3, v1}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;)Z

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBgService()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 19
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    check-cast v6, Landroid/util/Size;

    .line 21
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v6, v7

    .line 22
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawSuperNight()Z

    move-result v7

    if-eqz v7, :cond_3

    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_3
    mul-int/lit8 v6, v6, 0x3

    .line 23
    div-int/lit8 v6, v6, 0x2

    .line 24
    :goto_0
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->maxNumberOfRequiredFrames()I

    move-result v5

    int-to-long v7, v5

    int-to-long v5, v6

    mul-long/2addr v7, v5

    .line 25
    invoke-virtual {v4}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v4

    add-long/2addr v4, v7

    .line 26
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v6

    .line 27
    invoke-static {v6}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v4, p1

    .line 28
    :goto_2
    sget-boolean v5, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 29
    iget-boolean v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;->mFallback:Z

    .line 30
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    packed-switch p0, :pswitch_data_0

    .line 31
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    .line 32
    :pswitch_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    :pswitch_1
    if-nez v1, :cond_6

    .line 33
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    .line 34
    :cond_6
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CURRENT_MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    .line 35
    :pswitch_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 36
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 37
    check-cast p0, Landroid/util/Size;

    .line 38
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    .line 39
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->captureRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    .line 40
    invoke-static {p0, v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/saving/MemoryListener;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 41
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->clearSaveQueueFull()V

    .line 42
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    .line 43
    :cond_7
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    .line 44
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    .line 45
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_3

    .line 46
    :cond_9
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 47
    :goto_3
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
