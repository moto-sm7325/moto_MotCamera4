.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Camera;

    sget-object p1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string p1, "null cannot be cast to non-null type android.os.Bundle"

    .line 5
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    const-string p1, "PREVIOUS_VALUE"

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "VALUE"

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "SETTING"

    .line 8
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v2, Ljava/lang/Integer;

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationConfigured()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v5

    :goto_2
    if-eqz p1, :cond_7

    if-nez v0, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    move p1, v1

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v5

    :goto_4
    if-nez p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    :goto_5
    if-nez v4, :cond_6

    goto/16 :goto_a

    .line 18
    :cond_6
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->bannerStabData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    .line 19
    iput-boolean v1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->sustainWhileChangingMode:Z

    .line 20
    iput-boolean v5, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->rotatable:Z

    const p2, 0x7f080218

    .line 21
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 22
    invoke-static {v4, p2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 23
    iput-object p2, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f1203fa

    .line 24
    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    iput-object p2, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    const p2, 0x7f1203f9

    .line 26
    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 27
    iput-object p2, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    const p2, 0x7f1203fb

    .line 28
    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026abilization_button_close)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$1;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$1;-><init>()V

    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    const p2, 0x7f1203fc

    .line 31
    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026bilization_button_enable)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    .line 33
    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    goto/16 :goto_a

    .line 34
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 35
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 36
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 37
    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    :goto_6
    if-nez v4, :cond_a

    goto/16 :goto_a

    .line 38
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Supported()Z

    move-result p1

    if-eqz p1, :cond_b

    const v0, 0x7f12024a

    .line 39
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    const v0, 0x7f12024b

    .line 40
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const-string v2, "if (isHDR10) context.get\u2026setting_video_hdr10_plus)"

    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 43
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->bannerStabData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz p2, :cond_c

    const p2, 0x7f120197

    goto :goto_8

    :cond_c
    const p2, 0x7f120195

    :goto_8
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 44
    invoke-virtual {v4, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 45
    iput-object p2, v2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    const p2, 0x7f120192

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 46
    invoke-virtual {v4, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 47
    iput-object p2, v2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    if-eqz p1, :cond_d

    const p1, 0x7f08016d

    goto :goto_9

    :cond_d
    const p1, 0x7f08016e

    .line 48
    :goto_9
    sget-object p2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 49
    invoke-static {v4, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 50
    iput-object p1, v2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-boolean v1, v2, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->sustainWhileChangingMode:Z

    const p1, 0x7f1200f2

    .line 52
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.dialog_got_it)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$1;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$1;-><init>()V

    .line 54
    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    const p1, 0x7f120194

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v0, p2, v5

    .line 55
    invoke-virtual {v4, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(\n     \u2026on_main_lens, formatText)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerHDR10Data$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    .line 57
    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;)V

    goto :goto_a

    .line 58
    :cond_e
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    .line 59
    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    .line 60
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 61
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
