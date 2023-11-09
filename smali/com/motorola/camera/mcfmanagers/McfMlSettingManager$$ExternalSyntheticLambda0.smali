.class public final synthetic Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->PANE_HIDE_DUR:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->onSettingChanged(Lcom/motorola/camera/settings/Setting;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->reverseColor(Z)V

    :cond_0
    return-void

    .line 6
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_INCEPTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 8
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleInception()V

    goto/16 :goto_2

    .line 11
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SSDMOBILENET:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "McfMlSettingManager"

    if-eqz v0, :cond_2

    const-string p0, "MCF_ML_MODEL_SSDMOBILENET not supported"

    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 15
    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_HANDSSSD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 16
    iget-object v2, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "MCF_ML_MODEL_HANDSSSD not supported"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 19
    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 20
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 22
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 23
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    goto/16 :goto_2

    .line 26
    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 27
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 29
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 31
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 33
    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 36
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 38
    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 39
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleAiLowLightSelfiePreview()V

    goto :goto_2

    .line 42
    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 43
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleCudPreview()V

    goto :goto_2

    .line 46
    :cond_9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 47
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 49
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleEyeGlassRecognizer()V

    goto :goto_2

    .line 50
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    goto :goto_2

    .line 51
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    :cond_c
    :goto_2
    return-void

    .line 52
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 54
    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    .line 56
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    if-eq v0, p1, :cond_e

    .line 57
    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    .line 58
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 59
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mIsEnterSetupState:Z

    if-eqz p1, :cond_e

    .line 60
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->startEngine()V

    goto :goto_4

    .line 61
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->stopEngine()V

    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
