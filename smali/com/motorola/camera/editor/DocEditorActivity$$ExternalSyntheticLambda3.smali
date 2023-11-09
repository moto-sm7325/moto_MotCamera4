.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGenericArray;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 1
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->completeTutorial()V

    return-void

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->$r8$clinit:I

    .line 4
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    .line 8
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_6

    move v0, v2

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 10
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 11
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateMF(I)Z

    .line 14
    :cond_0
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 15
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 16
    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateWhiteBalance(I)Z

    .line 18
    :cond_1
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 19
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 20
    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 21
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureTime(F)Z

    .line 22
    :cond_2
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 23
    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 24
    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateISO(F)Z

    .line 26
    :cond_3
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 27
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 28
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    .line 29
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureComp(F)Z

    :cond_4
    if-le v1, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0

    .line 30
    :cond_6
    :goto_1
    sget-object p1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->CAMERA_WHEEL:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {p1}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 31
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PRO_SLIDER_BAR_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 32
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateItemLabel()V

    return-void

    .line 33
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 34
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f110474

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->showToast$enumunboxing$(II)V

    return-void

    .line 36
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->INFLATION_STATES:Ljava/util/List;

    .line 37
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/multicamera/DualCaptureStateHelper;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/multicamera/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 41
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->lensGroupSelect:Landroid/widget/ImageButton;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 42
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureLayoutType()I

    move-result p1

    const/4 v0, 0x2

    .line 43
    rem-int/2addr p1, v0

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    move v1, v0

    .line 44
    :goto_4
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 45
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/CaptureBarDualCaptureControlComponent;->updateLayoutSwitchDrawable(I)V

    goto :goto_5

    .line 47
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :goto_5
    return-void

    .line 48
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/List;

    .line 49
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    return-void

    .line 52
    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGenericArray;

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGenericArray;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 54
    iget-object p1, p1, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    .line 55
    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->showSettingDialog(Ljava/lang/String;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void

    .line 56
    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setPaintColor(Z)V

    .line 58
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 59
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 60
    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void

    .line 61
    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    sget p1, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110135

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110134

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f110137

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f110136

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 69
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 72
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void

    .line 74
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    sget p1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->$r8$clinit:I

    .line 75
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
