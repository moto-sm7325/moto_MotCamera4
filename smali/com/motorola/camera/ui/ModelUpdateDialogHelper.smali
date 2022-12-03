.class public Lcom/motorola/camera/ui/ModelUpdateDialogHelper;
.super Ljava/lang/Object;
.source "ModelUpdateDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;
    }
.end annotation


# direct methods
.method public static checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v1, 0x7f1200d2

    const/4 v2, 0x1

    const v3, 0x7f120109

    const v4, 0x7f120129

    const-string v5, "Error - modelState: "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "ModelUpdateDialogHelper"

    const/4 v9, 0x0

    if-ne p0, v0, :cond_5

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v10

    .line 4
    sget-boolean v11, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 5
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v11

    if-nez v11, :cond_4

    .line 6
    invoke-static {p2, v10}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->supportsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v11}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 8
    iput-object v0, v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 9
    iput v1, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_1

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in checkModelStateUpdateForGesture was not associated to any of the available switch cases."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const p0, 0x7f1200fa

    .line 12
    iput p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 13
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 17
    new-instance p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {p0, v10, p2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 18
    iput-object p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 19
    iput v4, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 20
    sget-object p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    .line 21
    iput-object p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 22
    iput v3, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 23
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 24
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v11}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 26
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    move v2, v9

    :goto_1
    return v2

    .line 27
    :cond_5
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne p0, v0, :cond_b

    .line 28
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    .line 29
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v10

    .line 30
    sget-boolean v11, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 31
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v11

    if-nez v11, :cond_a

    .line 32
    invoke-static {p2, v10}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->supportsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    new-instance v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v11}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 34
    iput-object v0, v11, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 35
    iput v1, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 36
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_7

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in checkModelStateUpdateForMotSceneDetect was not associated to any of the available switch cases."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const p0, 0x7f1200fc

    .line 38
    iput p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 39
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 41
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_2

    .line 44
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 45
    new-instance p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda8;

    invoke-direct {p0, v10, p2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda8;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 46
    iput-object p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 47
    iput v4, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 48
    sget-object p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda4;

    .line 49
    iput-object p0, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 50
    iput v3, v11, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 51
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 52
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v11}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_3

    .line 53
    :cond_9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 54
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    move v2, v9

    :goto_3
    return v2

    .line 55
    :cond_b
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne p0, v0, :cond_c

    .line 56
    invoke-static {p1, p2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdateForAiLowLightSelfie(ZLandroid/content/Context;)Z

    move-result p0

    return p0

    .line 57
    :cond_c
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne p0, v0, :cond_12

    .line 58
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object p0

    .line 59
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    invoke-static {p2, v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->supportsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_e

    :cond_d
    :goto_4
    move v2, v9

    goto/16 :goto_5

    .line 61
    :cond_e
    new-instance v10, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v10}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 62
    iput-object v0, v10, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v0, 0x7f1200d3

    .line 63
    iput v0, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v0, 0x7f12010f

    .line 64
    iput v0, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 65
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_11

    if-eq v0, v7, :cond_d

    if-eq v0, v6, :cond_f

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in checkModelStateUpdateForImageStabilization was not associated to any of the available switch cases."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    const p0, 0x7f1200fb

    .line 67
    iput p0, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 68
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 69
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_IMAGE_STABILIZATION_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 70
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 71
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz p1, :cond_10

    goto :goto_5

    .line 72
    :cond_10
    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 73
    new-instance p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;

    invoke-direct {p0, v1, p2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 74
    iput-object p0, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 75
    iput v4, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    .line 76
    sget-object p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    .line 77
    iput-object p0, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 78
    iput v3, v10, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 79
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 80
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v10}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_5

    .line 81
    :cond_11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_IMAGE_STABILIZATION_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 82
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    :goto_5
    return v2

    .line 84
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid: checkModelStateUpdate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public static checkModelStateUpdateForAiLowLightSelfie(ZLandroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMotAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v3

    .line 5
    sget-boolean v4, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 6
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    .line 7
    invoke-static {p1, v3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->supportsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 9
    iput-object v0, v2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v0, 0x7f1200d3

    .line 10
    iput v0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v0, 0x7f12010c

    .line 11
    iput v0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error - modelState: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in checkModelStateUpdateForAiLowLightSelfie was not associated to any of the available switch cases."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModelUpdateDialogHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const/4 v0, 0x1

    .line 14
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_LOW_LIGHT_SELFIE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 15
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p0, :cond_2

    return v0

    .line 17
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const p0, 0x7f120129

    .line 18
    new-instance v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v3, p1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 19
    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 20
    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    const p0, 0x7f120109

    .line 21
    sget-object p1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda1;

    .line 22
    iput-object p1, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 23
    iput p0, v2, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 24
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 25
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return v0

    :cond_3
    return v5

    .line 26
    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_LOW_LIGHT_SELFIE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 27
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return v5
.end method

.method public static supportsIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x20000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
