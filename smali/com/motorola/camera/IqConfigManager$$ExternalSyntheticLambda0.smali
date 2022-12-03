.class public final synthetic Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/IqConfigManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/IqConfigManager;

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    .line 4
    :cond_0
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    .line 6
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    .line 8
    iput v3, v0, Lcom/motorola/camera/IqConfigManager;->mLastExposureTime:F

    .line 9
    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/LowLightExposureTableTracker;->updateEnvironmentInfo(Landroid/os/Bundle;)V

    .line 10
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    const-string/jumbo v2, "this$0"

    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "getCurrentCameraType()"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    .line 14
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 15
    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mLastExposureTime:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_8

    .line 16
    iput-wide v7, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mLastExposureTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    const-string v11, "get(SettingsManager.EXPOSURE_TIME)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v10, v9}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v9

    .line 20
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_7

    move v11, v6

    :goto_1
    add-int/lit8 v12, v11, 0x1

    .line 21
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v6

    if-ne v11, v13, :cond_3

    .line 22
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v11, -0x1

    .line 23
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    add-long/2addr v15, v13

    int-to-long v13, v5

    div-long/2addr v15, v13

    .line 24
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    add-long v19, v19, v17

    div-long v19, v19, v13

    cmp-long v13, v15, v7

    if-gtz v13, :cond_4

    cmp-long v13, v7, v19

    if-gez v13, :cond_4

    move v13, v6

    goto :goto_2

    :cond_4
    move v13, v3

    :goto_2
    if-eqz v13, :cond_5

    .line 25
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_4

    :cond_5
    if-lt v12, v10, :cond_6

    goto :goto_3

    :cond_6
    move v11, v12

    goto :goto_1

    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    :goto_4
    long-to-float v7, v7

    const v8, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v7, v8

    div-float/2addr v2, v7

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v7, v2

    .line 27
    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_8

    iput-wide v7, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    .line 28
    :cond_8
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 29
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 30
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 32
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x640

    if-ge v2, v8, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr v2, v7

    .line 34
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    const-string v8, "get(SettingsManager.ISO)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, v7}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    .line 37
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    move v8, v6

    :goto_6
    add-int/lit8 v9, v8, 0x1

    .line 38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    if-ne v8, v10, :cond_a

    .line 39
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_8

    :cond_a
    add-int/lit8 v10, v8, -0x1

    .line 40
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int/2addr v11, v10

    div-int/2addr v11, v5

    .line 41
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    add-int/2addr v12, v10

    div-int/2addr v12, v5

    if-gt v11, v2, :cond_b

    if-ge v2, v12, :cond_b

    move v10, v6

    goto :goto_7

    :cond_b
    move v10, v3

    :goto_7
    if-eqz v10, :cond_c

    .line 42
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_8

    :cond_c
    if-lt v9, v7, :cond_d

    goto :goto_8

    :cond_d
    move v8, v9

    goto :goto_6

    .line 43
    :cond_e
    :goto_8
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    if-eq v2, v3, :cond_f

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    .line 44
    :cond_f
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CCT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 45
    invoke-virtual {v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 46
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    if-eq v2, v1, :cond_10

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    .line 47
    :cond_10
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;-><init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
