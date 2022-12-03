.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->moveControlPanelToggle()V

    :cond_2
    return-void

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 5
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/Notifier$Listener;

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    .line 10
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 11
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    .line 15
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "TORCH.mName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->autoSetting:Ljava/util/Map;

    .line 19
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "FLASH.mName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateItems(ZLkotlin/jvm/functions/Function0;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
