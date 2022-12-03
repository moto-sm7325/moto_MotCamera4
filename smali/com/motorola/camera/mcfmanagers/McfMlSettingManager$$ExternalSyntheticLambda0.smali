.class public final synthetic Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateSceneDetection()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility()V

    return-void

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;

    sget v0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 10
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mListView:Landroid/widget/ListView;

    if-nez p0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    if-eqz p0, :cond_3

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void

    .line 19
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 21
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleInception()V

    goto/16 :goto_4

    .line 24
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SSDMOBILENET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 25
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "McfMlSettingManager"

    if-eqz v0, :cond_5

    const-string p0, "MCF_ML_MODEL_SSDMOBILENET not supported"

    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 28
    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_HANDSSSD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 29
    iget-object v2, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "MCF_ML_MODEL_HANDSSSD not supported"

    .line 31
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 32
    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 33
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 35
    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 36
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    goto :goto_4

    .line 39
    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 40
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 42
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 44
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 46
    :cond_9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 47
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 49
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 51
    :cond_a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 52
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 54
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleAiLowLightSelfiePreview()V

    goto :goto_4

    .line 55
    :cond_b
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 56
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 58
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleCudPreview()V

    goto :goto_4

    .line 59
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    goto :goto_4

    .line 60
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    :cond_e
    :goto_4
    return-void

    .line 61
    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->INFLATION_STATES:Ljava/util/List;

    .line 62
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 65
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 67
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 68
    check-cast p1, Ljava/lang/Integer;

    .line 69
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->previousMode:I

    if-nez p1, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v0, v3, :cond_11

    :goto_6
    if-nez p1, :cond_10

    goto :goto_7

    .line 70
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_11

    move v0, v2

    goto :goto_8

    :cond_11
    :goto_7
    move v0, v1

    .line 71
    :goto_8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->modeChangeToManual:Z

    const-string v0, "currentMode"

    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->previousMode:I

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_15

    .line 74
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->notifyFaceBeauty(Z)V

    goto :goto_a

    .line 75
    :cond_12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 76
    iget-object v3, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 77
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-ne v0, v2, :cond_14

    move v1, v2

    :cond_14
    :goto_9
    if-eqz v1, :cond_15

    .line 79
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->reverseColor(Z)V

    :cond_15
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
