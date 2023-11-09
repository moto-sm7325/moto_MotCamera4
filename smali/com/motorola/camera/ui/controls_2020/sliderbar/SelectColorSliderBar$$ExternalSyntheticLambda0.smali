.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    new-instance p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    if-eqz p2, :cond_1

    .line 6
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    .line 10
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/List;

    .line 11
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, v0, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string p1, "null cannot be cast to non-null type android.os.Bundle"

    .line 13
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    const-string p1, "PREVIOUS_VALUE"

    .line 14
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "VALUE"

    .line 15
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "SETTING"

    .line 16
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 17
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast v2, Ljava/lang/Integer;

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationConfigured()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p1, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    move p1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v5

    :goto_3
    if-eqz p1, :cond_7

    if-nez v0, :cond_5

    goto :goto_4

    .line 24
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    move p1, v4

    goto :goto_5

    :cond_6
    :goto_4
    move p1, v5

    :goto_5
    if-nez p1, :cond_7

    .line 25
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->bannerStabData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    .line 28
    iput-boolean v4, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->sustainWhileChangingMode:Z

    .line 29
    iput-boolean v5, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->rotatable:Z

    const v0, 0x7f08020a

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31
    iput-object v0, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f1103ef

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    iput-object v0, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    const v0, 0x7f1103ee

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    iput-object v0, p2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    const v0, 0x7f1103f0

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "res.getString(R.string.stabilization_button_close)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$1;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$1;-><init>()V

    .line 38
    invoke-virtual {p2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    const v0, 0x7f1103f1

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "res.getString(R.string.s\u2026bilization_button_enable)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    .line 41
    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    goto/16 :goto_9

    .line 42
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 43
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 44
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 45
    :cond_8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 46
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Supported()Z

    move-result v0

    if-eqz v0, :cond_9

    const v2, 0x7f110243

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    const v2, 0x7f110244

    .line 49
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    const-string v3, "if (isHDR10) res.getStri\u2026setting_video_hdr10_plus)"

    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 52
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->bannerStabData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz p2, :cond_a

    const p2, 0x7f110193

    goto :goto_7

    :cond_a
    const p2, 0x7f110191

    :goto_7
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 53
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 54
    iput-object p2, v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    const p2, 0x7f11018e

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 55
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 56
    iput-object p2, v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    if-eqz v0, :cond_b

    const p2, 0x7f080169

    goto :goto_8

    :cond_b
    const p2, 0x7f08016a

    .line 57
    :goto_8
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 58
    iput-object p2, v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-boolean v4, v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->sustainWhileChangingMode:Z

    const p2, 0x7f1100f2

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "res.getString(R.string.dialog_got_it)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$1;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$1;-><init>()V

    .line 62
    invoke-virtual {v3, p2, v0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    const p2, 0x7f110190

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(R.string.h\u2026on_main_lens, formatText)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    .line 65
    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    goto :goto_9

    .line 66
    :cond_c
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    .line 67
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    .line 68
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 69
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
