.class public Lcom/motorola/camera/fsm/camera/states/MultiShotStates;
.super Ljava/lang/Object;
.source "MultiShotStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$StoreCaptureEventBundleRunnable;,
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsStopRepeatingRunnable;,
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MemoryNotAvailableRunnable;,
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;,
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;,
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsTeardownRunnable;,
        Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsSetupRunnable;
    }
.end annotation


# static fields
.field public static final FAST_MODE_MTK:[I

.field public static final MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static mMtkCshotSupport:Z = false

.field public static mMtkSpeedUpSupported:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1
    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v3, v0, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MULTISHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x2

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v5, v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v5, v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v5, v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v5, v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v5, v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->STOPPING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v6, v5, v0

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    new-instance v1, Lcom/motorola/camera/fsm/camera/StateKey;

    new-array v3, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v3, v2

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v2, v3, v0

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static access$500(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mImageListenerSwitcher:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mWrapper:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mMultiShotListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mImageReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mMcfListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$QcMfnrImageListenerSwitcher;->mMcfHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static access$800()I
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/Size;

    .line 4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/camera/CameraTransition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 3
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 6
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(I)V

    .line 9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V

    .line 11
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 15
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HISTORY_STATE"

    invoke-direct {v4, v8, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 21
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 23
    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 24
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 27
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 28
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 29
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$IsBurstAllowedRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;

    invoke-direct {v3, v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/DesktopModeGuardRunnable;-><init>(ZI)V

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v3, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 38
    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    .line 41
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v8, v10, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {p0, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 44
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 46
    iput-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 47
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 2
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 3
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsSetupRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V

    .line 5
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 6
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsTeardownRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsTeardownRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V

    .line 7
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 8
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 9
    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 10
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 11
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 12
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 13
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreErrorRunnable;-><init>()V

    .line 14
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 15
    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 16
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 18
    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 19
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 20
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 21
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 24
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 26
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "CLOSE_ON_STOP"

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$StoreCaptureEventBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-direct {v7, v0, v8, v11}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$StoreCaptureEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;)V

    .line 30
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 32
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 33
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 34
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 36
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 37
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 38
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 39
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 40
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 41
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressStopGuardRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressStopGuardRunnable;-><init>()V

    .line 42
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 43
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 44
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 46
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 47
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 48
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 49
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 50
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 51
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 52
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 54
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 55
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 56
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 57
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 58
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 59
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 60
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 62
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 63
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 64
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 65
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 66
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 67
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 68
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 70
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TRIPOD_LAYOUT_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 71
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 72
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 73
    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 74
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 75
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 76
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 78
    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 79
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 80
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 81
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 83
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreEventBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 85
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 87
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    .line 90
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 92
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 94
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 95
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 96
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 98
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 99
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 100
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    new-array v14, v10, [Ljava/lang/Integer;

    const/16 v15, 0x1b

    .line 102
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v13

    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([Ljava/lang/Integer;I)V

    .line 103
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    invoke-direct {v11, v10, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 105
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;

    invoke-direct {v11, v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/guards/GuardedTransitionListRunnable$1;)V

    .line 107
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 108
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 110
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 112
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 113
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 114
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    .line 116
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 118
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 119
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 120
    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 121
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v11, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 122
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 123
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 124
    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 125
    iput-object v12, v7, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 126
    sget-object v12, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 127
    iput-object v12, v7, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 128
    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 129
    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->PHOTO_MODES:Ljava/util/List;

    .line 131
    invoke-static {v7, v14}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v14

    .line 132
    iget-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 134
    iget-object v14, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 136
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 137
    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 138
    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;-><init>(Z)V

    .line 139
    iput-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 140
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 141
    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 142
    iput-object v14, v12, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 143
    sget-object v15, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 144
    iput-object v15, v12, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 145
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 146
    iput-object v10, v12, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 147
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 148
    iget-object v12, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 150
    iget-object v10, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 152
    iput-object v15, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 153
    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 154
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    .line 155
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 156
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 157
    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 158
    iput-object v11, v10, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 159
    sget-object v11, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 160
    iput-object v11, v10, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 161
    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 162
    iget-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v3

    .line 164
    iget-object v10, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 166
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 167
    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 168
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-direct {v10, v0, v4}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates;Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V

    .line 169
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 170
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 171
    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 172
    iput-object v10, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 173
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 174
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 176
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MemoryNotAvailableRunnable;

    invoke-direct {v10, v4}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MemoryNotAvailableRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$1;)V

    .line 177
    iput-object v10, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 178
    iput-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 179
    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 180
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 181
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 183
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 185
    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 186
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 187
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsStopRepeatingRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsStopRepeatingRunnable;-><init>()V

    .line 188
    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 189
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 190
    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STOP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 191
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 192
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 193
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 194
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    .line 195
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 196
    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 197
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 199
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 200
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 201
    iput-object v7, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 202
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    invoke-direct {v9, v13, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 203
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 204
    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 205
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 207
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 208
    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 209
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 210
    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v13, v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 211
    iput-object v10, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 212
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CopyCameraKeyStatusRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v11, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 214
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;

    invoke-direct {v11, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 216
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 218
    iput-object v11, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 219
    new-instance v10, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v10, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 220
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 222
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 223
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 224
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;-><init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 225
    iput-object v5, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 226
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CopyCameraKeyStatusRunnable;

    invoke-direct {v9, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 228
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;

    invoke-direct {v9, v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CopyFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 230
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable$1;)V

    .line 232
    iput-object v9, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 233
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 234
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 236
    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 237
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreCameraKeyStatusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    .line 238
    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 239
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 240
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 242
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    .line 244
    iput-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 245
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    .line 246
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;

    invoke-direct {v2, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/MsLockRunnable;-><init>(Z)V

    .line 247
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 248
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 249
    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 250
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 251
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    .line 253
    iput-object v14, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 254
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 255
    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 256
    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V

    .line 257
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    .line 259
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MULTISHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
