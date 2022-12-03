.class public final synthetic Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingDialogFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/SettingDialogFragment;

    sget p1, Lcom/motorola/camera/fragments/SettingDialogFragment;->$r8$clinit:I

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const-string p1, "$activity"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "LOCATION"

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
