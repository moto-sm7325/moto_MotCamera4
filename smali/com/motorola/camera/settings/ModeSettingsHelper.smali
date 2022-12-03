.class public Lcom/motorola/camera/settings/ModeSettingsHelper;
.super Ljava/lang/Object;
.source "ModeSettingsHelper.java"


# direct methods
.method public static convertToRealMode(I)I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    if-nez p0, :cond_1

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x21

    return p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCudPreviewSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x2c

    :cond_2
    return p0
.end method

.method public static convertToSliderMode(I)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-eq p0, v1, :cond_8

    const/16 v1, 0x21

    if-ne p0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x1f

    const/16 v2, 0x18

    if-eq p0, v2, :cond_5

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x12

    const/4 v2, 0x6

    if-eq p0, v2, :cond_3

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 3
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 4
    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v2

    .line 6
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    return p0

    :cond_8
    :goto_2
    return v0
.end method

.method public static getDefaultMode()I
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PRO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 5
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->HDR_PRO:Lcom/motorola/camera/AppFeatures$Feature;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SLIDER_HDR_PLUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 11
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->HDR_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDefaultSlider()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 7
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->NO_SLOW_MOTION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    .line 8
    iget-object v5, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v5, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->DEPTH_ENABLED:Lcom/motorola/camera/AppFeatures$Feature;

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x12

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x4

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public static getMenuOrder()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->MODES_ORDER:Ljava/util/List;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static getModeSupportFacing(IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    if-eq p0, v4, :cond_14

    const/16 v4, 0x27

    if-eq p0, v4, :cond_14

    const/16 v4, 0x28

    if-ne p0, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v4, 0x9

    if-ne p0, v4, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    const/16 v4, 0x1d

    if-eq p0, v4, :cond_13

    const/16 v4, 0x22

    if-eq p0, v4, :cond_13

    const/16 v4, 0x23

    if-ne p0, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x12

    if-eq p0, v4, :cond_f

    const/4 v5, 0x6

    if-ne p0, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x10

    if-ne p0, v4, :cond_6

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8
    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v2, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    invoke-static {p1, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 12
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_6
    const/4 p1, 0x3

    if-ne p0, p1, :cond_8

    .line 13
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 14
    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_7
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 17
    invoke-virtual {p1, v2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_15

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    const/16 p1, 0x18

    if-eq p0, p1, :cond_d

    const/16 p1, 0x1f

    if-ne p0, p1, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x2c

    if-ne p0, p1, :cond_a

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    if-ne p0, v2, :cond_c

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCudPreviewSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 21
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p1, :cond_b

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 24
    :cond_b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 26
    :cond_c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_d
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitSupported()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 32
    :cond_f
    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 35
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    if-nez p1, :cond_10

    .line 36
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 39
    :cond_10
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 42
    :cond_11
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontModeRestrictedByCud(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 44
    :cond_12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 46
    :cond_13
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 47
    :cond_14
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_15
    :goto_4
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontModeRestrictedByCud(I)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_16
    return-object v0
.end method

.method public static getPreviewRatio(IIFZZ)F
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p0, v1, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    div-float/2addr p0, p2

    goto :goto_1

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    invoke-static {}, Lcom/motorola/camera/PreviewSize$AspectRatio;->values()[Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p3

    array-length p4, p3

    :goto_0
    if-ge v0, p4, :cond_2

    aget-object v1, p3, v0

    .line 2
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, p1

    if-gez v3, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    move p1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    .line 6
    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCUDVideoMode(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 7
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_5
    const/4 p2, 0x2

    if-ne p0, p2, :cond_6

    .line 8
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_6
    const/16 p2, 0x9

    if-ne p0, p2, :cond_8

    .line 9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast p0, Landroid/util/Size;

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x0

    .line 13
    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    .line 14
    :cond_7
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    :cond_8
    const/16 p2, 0x13

    if-eq p0, p2, :cond_25

    const/16 v1, 0x27

    if-ne p0, v1, :cond_9

    goto/16 :goto_6

    :cond_9
    const/16 v2, 0x28

    if-ne p0, v2, :cond_a

    .line 15
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_a
    const/16 v2, 0x22

    if-ne p0, v2, :cond_b

    .line 16
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_b
    const/4 v2, 0x3

    if-ne p0, v2, :cond_c

    .line 17
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_c
    const/4 v2, 0x1

    if-nez p4, :cond_d

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDualDepthWithStandardAspectRatio()Z

    move-result v3

    if-nez v3, :cond_f

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDualSegmentationWithStandardAspectRatio()Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    if-eq p0, p2, :cond_f

    if-ne p0, v1, :cond_e

    goto :goto_2

    :cond_e
    move p2, v0

    goto :goto_3

    :cond_f
    :goto_2
    move p2, v2

    :goto_3
    if-eqz p2, :cond_10

    .line 20
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    .line 21
    :cond_10
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 p2, 0x4

    if-ne p0, p2, :cond_11

    .line 22
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 24
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_11

    .line 25
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_11
    if-eqz p4, :cond_13

    .line 26
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 28
    sget-object p2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 29
    iget-object p3, p0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 30
    check-cast p3, Landroid/util/Size;

    .line 31
    invoke-virtual {p1, p0, p2, p3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 32
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-nez p2, :cond_12

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    move-object p1, p0

    check-cast p1, Landroid/util/Size;

    .line 35
    :cond_12
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    .line 36
    :cond_13
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    if-eqz p3, :cond_14

    .line 37
    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 38
    check-cast p0, Landroid/util/Size;

    goto/16 :goto_5

    :cond_14
    if-ne p1, v2, :cond_1f

    const/16 p1, 0x10

    if-eq p0, p1, :cond_15

    const/4 p3, 0x6

    if-ne p0, p3, :cond_19

    .line 39
    :cond_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCameraSupported()Z

    move-result p3

    if-eqz p3, :cond_19

    .line 40
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 41
    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 42
    invoke-virtual {p4, p3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 43
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 44
    check-cast p3, Lcom/motorola/camera/settings/CameraType;

    .line 45
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    if-ne p3, p4, :cond_16

    goto/16 :goto_4

    .line 46
    :cond_16
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH1X:Lcom/motorola/camera/settings/CameraType;

    if-ne p3, p4, :cond_17

    goto :goto_4

    :cond_17
    if-ne p0, p1, :cond_18

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackLogicalDepthSecondaryCamera()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 48
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_SECONDARY:Lcom/motorola/camera/settings/CameraType;

    goto :goto_4

    .line 49
    :cond_18
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    goto :goto_4

    :cond_19
    const/16 p1, 0x18

    if-ne p0, p1, :cond_1a

    .line 50
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_4

    .line 51
    :cond_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackMainCamera()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 53
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_4

    .line 54
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 55
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    goto :goto_4

    .line 56
    :cond_1c
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCUDVideoMode(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 57
    sget-object p4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_4

    .line 58
    :cond_1d
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 59
    iget-object p3, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 60
    invoke-virtual {p3, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 61
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 62
    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    .line 63
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 64
    invoke-virtual {p3, p1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    move-object p4, p1

    goto :goto_4

    .line 65
    :cond_1e
    invoke-static {p4, v2, p0}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(ZII)Lcom/motorola/camera/settings/CameraType;

    move-result-object p4

    .line 66
    :goto_4
    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 67
    iget-object p1, p2, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 68
    check-cast p1, Landroid/util/Size;

    .line 69
    invoke-virtual {p0, p2, p4, p1}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    goto :goto_5

    .line 70
    :cond_1f
    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 71
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 72
    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 73
    check-cast p3, Landroid/util/Size;

    .line 74
    invoke-virtual {p0, p2, p1, p3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 75
    :goto_5
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 76
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0

    .line 77
    :cond_20
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    .line 78
    :cond_21
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 79
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 80
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 81
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-eqz p2, :cond_22

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-nez p2, :cond_23

    .line 82
    :cond_22
    invoke-static {p4, v0, v0}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZZ)V

    .line 83
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 84
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 85
    check-cast p0, Lcom/motorola/camera/VideoFormat;

    iget-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :cond_23
    if-eqz p4, :cond_24

    .line 86
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    .line 87
    :cond_24
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    .line 88
    :cond_25
    :goto_6
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p0

    return p0
.end method

.method public static getSlider(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 6
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 7
    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    .line 10
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 12
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 15
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_8

    const-string v1, "menu list data error:"

    .line 23
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/List;

    move-result-object v0

    .line 26
    :cond_8
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v1

    if-eqz p0, :cond_9

    const/4 p0, -0x1

    if-eq v1, p0, :cond_9

    const/16 p0, 0x3e8

    if-eq v1, p0, :cond_9

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    move-object p0, v0

    :cond_a
    :goto_2
    return-object p0
.end method

.method public static getSliderLeftMode(I)I
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-ne v2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p0, v3, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, -0x1

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_2

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result p0

    return p0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result p0

    return p0
.end method

.method public static getSliderMenuMode()I
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    return v0
.end method

.method public static hideSwitch(IZ)Z
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getModeSupportFacing(IZ)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontModeRestrictedByCud(I)Z

    move-result p0

    return p0
.end method

.method public static isDefaultMode(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_1

    const/16 v1, 0x21

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x2c

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDefaultSlider()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static resetSliderMenuMode()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveSlider(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setMenuOrder(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static setSliderMenuMode(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p0, v0

    .line 4
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static sliderContainMode(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
