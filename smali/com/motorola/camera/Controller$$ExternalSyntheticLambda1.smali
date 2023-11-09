.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const-string p1, "$activity"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LOCATION"

    .line 5
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 7
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string/jumbo p1, "this$0"

    .line 8
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 12
    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    return-void

    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 14
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller;

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 18
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 19
    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 20
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setMenuOrder(Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout()V

    .line 23
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 24
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    .line 25
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 26
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
