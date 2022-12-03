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

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const-string p1, "$activity"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "LOCATION"

    .line 5
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p0, p1, p2, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller;

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, v0, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    const-string p1, "$it"

    .line 12
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
