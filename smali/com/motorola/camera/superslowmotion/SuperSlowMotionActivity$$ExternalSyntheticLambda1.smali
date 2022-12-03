.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    const-string p1, "$it"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    invoke-interface {p0, v1}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->continueProcessing()V

    return-void

    :cond_0
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 9
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setMenuOrder(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout()V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    .line 14
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 15
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p1, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
