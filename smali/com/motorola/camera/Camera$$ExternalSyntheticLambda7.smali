.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/Camera;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/Camera;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void
.end method

.method public onLaunchStatusFetched(I)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/Camera;

    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    const-string v0, "$camera"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expecting status success: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but status received: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LensApiHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mMonkeyUser:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->restartStateMachineAndInitOnResume()V

    :cond_1
    :goto_0
    return-void
.end method
