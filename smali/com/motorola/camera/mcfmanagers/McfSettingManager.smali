.class public Lcom/motorola/camera/mcfmanagers/McfSettingManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "McfSettingManager.java"


# instance fields
.field public mEnable:Z

.field public mIsCliDisplay:Z

.field public mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/mcfmanagers/McfSettingManager;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/Collection;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/Collection;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public sendMcfParameters$enumunboxing$(I)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2c

    .line 2
    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    const-string v2, "AutoNvAllowed"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v4, p1, :cond_1

    if-ne v1, p1, :cond_5

    .line 5
    :cond_1
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 6
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    .line 8
    :goto_0
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 9
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    if-ne v2, v6, :cond_4

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v2

    .line 11
    :goto_1
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FlashMode"

    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v5, 0x4

    if-eq v4, p1, :cond_6

    if-ne v2, p1, :cond_b

    .line 12
    :cond_6
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 13
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_7

    move v6, v4

    goto :goto_2

    :cond_7
    move v6, v3

    .line 15
    :goto_2
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 16
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_a

    if-eq v7, v2, :cond_8

    if-eq v7, v1, :cond_a

    if-eq v7, v5, :cond_a

    goto :goto_3

    :cond_8
    if-nez v6, :cond_9

    move v6, v4

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v2

    goto :goto_4

    :cond_a
    move v6, v1

    .line 18
    :goto_4
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "HdrMode"

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v6, "\""

    const-string/jumbo v7, "}}"

    const-string/jumbo v8, "{\""

    const/16 v9, 0x2c

    if-eq v4, p1, :cond_c

    if-eq v5, p1, :cond_c

    const/4 v5, 0x5

    if-ne v5, p1, :cond_10

    .line 19
    :cond_c
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 20
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_d

    goto :goto_5

    :cond_d
    if-ne v2, v5, :cond_e

    move v1, v4

    goto :goto_5

    :cond_e
    move v1, v2

    .line 22
    :goto_5
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 23
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 24
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 25
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    .line 26
    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast v10, Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v11

    .line 29
    iget-boolean v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v12, :cond_f

    .line 30
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_f
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 32
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "BeautificationParams"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "\":{\"beauty-mode\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, ",\"beauty-level\":"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v5, ",\"beauty-region\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v5, ",\"beauty-device\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eq v4, p1, :cond_11

    const/16 v1, 0x11

    if-ne v1, p1, :cond_15

    .line 43
    :cond_11
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 45
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v4, v1, :cond_12

    const/4 v1, 0x3

    goto :goto_6

    :cond_12
    if-ne v2, v1, :cond_13

    move v1, v4

    goto :goto_6

    :cond_13
    move v1, v2

    .line 46
    :goto_6
    iget-boolean v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v5, :cond_14

    .line 47
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_14
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 49
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "BestShotVideoParams"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "\":{\"bestshotvideo-mode\":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-eq v4, p1, :cond_16

    const/4 v1, 0x6

    if-ne v1, p1, :cond_18

    .line 54
    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_7

    :cond_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getBokehLevel()F

    move-result v1

    float-to-int v1, v1

    :goto_7
    const-string v5, "RTBokehBlurLevel"

    .line 55
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    :cond_18
    if-eq v4, p1, :cond_19

    const/16 v1, 0x15

    if-eq v1, p1, :cond_19

    const/16 v1, 0x16

    if-ne v1, p1, :cond_1c

    .line 56
    :cond_19
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 57
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 59
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1a

    const/4 v1, 0x3

    goto :goto_8

    :cond_1a
    move v1, v2

    .line 60
    :goto_8
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 61
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 62
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 63
    iget-boolean v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_1b

    .line 64
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    :cond_1b
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 66
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "SFBokehParams"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\":{\"mode\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, ",\"level\":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    if-eq v4, p1, :cond_1d

    const/16 v1, 0xe

    if-eq v1, p1, :cond_1d

    const/16 v1, 0x26

    if-ne v1, p1, :cond_23

    .line 73
    :cond_1d
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 74
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 75
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 76
    check-cast v1, Ljava/lang/Boolean;

    .line 77
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->COLOR_SEGMENTATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 78
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 79
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 80
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v4

    goto :goto_9

    :cond_1e
    move v5, v3

    .line 82
    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 83
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x3

    goto :goto_a

    :cond_1f
    move v1, v2

    .line 84
    :goto_a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x3

    goto :goto_b

    :cond_20
    move v5, v2

    .line 85
    :goto_b
    iget-boolean v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_21

    .line 86
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :cond_21
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 88
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "SelectiveColorParams"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\":{\"selective-color-mode\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v1, :cond_22

    .line 94
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_22
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 96
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "ColorSegmentationParams"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "\":{\"color-seg-mode\":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, ""

    if-eq v4, p1, :cond_24

    const/16 v5, 0xf

    if-ne v5, p1, :cond_27

    .line 101
    :cond_24
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 102
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 103
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v10, v5, 0x10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v5, v5, 0xff

    .line 104
    iget-boolean v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v12, :cond_25

    .line 105
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_25
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 107
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "SelectiveColorSelection"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "\":{\"selective-color-R\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v10, v1, v12}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 111
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, ",\"selective-color-G\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v11, v1, v12}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 113
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, ",\"selective-color-B\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v1, v12}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 115
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v12, :cond_26

    .line 117
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_26
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 119
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "ColorSegmentationSelection"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "\":{\"color-seg-R\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v10, v1, v12}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 123
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, ",\"color-seg-G\":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v11, v1, v10}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 125
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, ",\"color-seg-B\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v1, v10}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 127
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    if-eq v4, p1, :cond_28

    const/16 v5, 0x10

    if-ne v5, p1, :cond_2b

    .line 128
    :cond_28
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 129
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 130
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 131
    iget-boolean v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_29

    .line 132
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :cond_29
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 134
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "SelectiveColorThreshold"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\":{\"selective-color-threshold\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-static {v1, v5, v11, v10}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 138
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "\"selective-color-threshold-max\":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "600"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-boolean v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_2a

    .line 142
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_2a
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 144
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "ColorSegmentationThreshold"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "\":{\"color-seg-threshold\":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v11, v10}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 148
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v5, "\"color-seg-threshold-max\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    if-eq v4, p1, :cond_2c

    const/4 v1, 0x7

    if-ne v1, p1, :cond_2d

    .line 151
    :cond_2c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 152
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 153
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    .line 154
    invoke-virtual {v0, v10, v11, v3}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_2d
    if-eq v4, p1, :cond_2e

    const/16 v1, 0x8

    if-ne v1, p1, :cond_2f

    .line 155
    :cond_2e
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 156
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 157
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    .line 158
    invoke-virtual {v0, v10, v11, v4}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_2f
    if-eq v4, p1, :cond_30

    const/16 v1, 0x9

    if-ne v1, p1, :cond_31

    .line 159
    :cond_30
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 160
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 161
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    .line 162
    invoke-virtual {v0, v10, v11, v2}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_31
    if-eq v4, p1, :cond_32

    const/16 v1, 0xa

    if-ne v1, p1, :cond_33

    .line 163
    :cond_32
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 164
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 165
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    const/4 v1, 0x3

    .line 166
    invoke-virtual {v0, v10, v11, v1}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_33
    if-eq v4, p1, :cond_34

    const/16 v1, 0xb

    if-ne v1, p1, :cond_35

    .line 167
    :cond_34
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 169
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->setDebugLogMask(II)V

    :cond_35
    if-eq v4, p1, :cond_36

    const/16 v1, 0xc

    if-ne v1, p1, :cond_38

    .line 171
    :cond_36
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 172
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 173
    check-cast v1, Ljava/lang/String;

    .line 174
    iget-boolean v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v5, :cond_37

    .line 175
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_37
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 177
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "SetDebugLogMaskStr"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "\":{\"type\":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, ",\"mask\":["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v5, "]}}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    if-eq v4, p1, :cond_39

    const/16 v1, 0xd

    if-ne v1, p1, :cond_3a

    .line 184
    :cond_39
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 185
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 186
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 187
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/mcf/McfParameters;->setDebugLogMask(II)V

    :cond_3a
    if-eq v4, p1, :cond_3b

    const/16 v1, 0x13

    if-ne v1, p1, :cond_3d

    .line 188
    :cond_3b
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 189
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 190
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x3

    goto :goto_c

    :cond_3c
    move v1, v2

    .line 191
    :goto_c
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SuperResolutionMode"

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const/16 v1, 0x14

    if-ne v1, p1, :cond_3f

    .line 192
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 193
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 194
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x3

    goto :goto_d

    :cond_3e
    move v1, v2

    .line 195
    :goto_d
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SuperNightMode"

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const/16 v1, 0x1f

    if-ne v1, p1, :cond_41

    .line 196
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 197
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 198
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x3

    goto :goto_e

    :cond_40
    move v1, v2

    .line 199
    :goto_e
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SuperPortraitMode"

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    if-eq v4, p1, :cond_42

    const/16 v1, 0x18

    if-ne v1, p1, :cond_44

    .line 200
    :cond_42
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMLrnSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 201
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 202
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 203
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 204
    check-cast v1, Ljava/lang/String;

    .line 205
    iget-boolean v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v5, :cond_43

    .line 206
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_43
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 208
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v7, "GroundTruths"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v5, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    const/16 v1, 0x28

    const/16 v5, 0x27

    if-eq v4, p1, :cond_45

    const/16 v6, 0x1a

    if-ne v6, p1, :cond_49

    .line 212
    :cond_45
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v7, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 213
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 214
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 215
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_46

    move v6, v2

    goto :goto_f

    :cond_46
    const/4 v6, 0x3

    .line 216
    :goto_f
    invoke-virtual {v0, v4, v6}, Lcom/motorola/camera/mcf/McfParameters;->setAutoCapture$enumunboxing$(II)V

    .line 217
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 218
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 219
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "MlSmileDetectionMode"

    if-eqz v6, :cond_48

    .line 220
    iget-boolean v6, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 221
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 222
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    if-eq v6, v5, :cond_47

    .line 223
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    if-eq v6, v1, :cond_47

    move v6, v4

    goto :goto_10

    :cond_47
    move v6, v3

    :goto_10
    if-eqz v6, :cond_48

    const/4 v6, 0x3

    .line 224
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 225
    :cond_48
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_11
    if-eq v4, p1, :cond_4a

    const/16 v6, 0x1b

    if-ne v6, p1, :cond_4d

    .line 226
    :cond_4a
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v7, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 227
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 228
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 229
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_4b

    const/4 v6, 0x3

    goto :goto_12

    :cond_4b
    if-ne v2, v6, :cond_4c

    move v6, v4

    goto :goto_12

    :cond_4c
    move v6, v2

    .line 230
    :goto_12
    invoke-virtual {v0, v2, v6}, Lcom/motorola/camera/mcf/McfParameters;->setAutoCapture$enumunboxing$(II)V

    :cond_4d
    if-eq v4, p1, :cond_4e

    const/16 v6, 0x1c

    if-ne v6, p1, :cond_52

    .line 231
    :cond_4e
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v7, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 232
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_4f

    goto :goto_13

    .line 233
    :cond_4f
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v7, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-eqz v7, :cond_50

    move v7, v4

    goto :goto_14

    :cond_50
    :goto_13
    move v7, v3

    :goto_14
    if-eqz v7, :cond_52

    .line 234
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 235
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 236
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_51

    const/4 v6, 0x3

    goto :goto_15

    :cond_51
    move v6, v2

    :goto_15
    const/16 v7, 0x31

    .line 237
    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->setAlgorithmMode$enumunboxing$(II)V

    :cond_52
    if-eq v4, p1, :cond_53

    const/16 v6, 0x1d

    if-ne v6, p1, :cond_58

    .line 238
    :cond_53
    iget-boolean v6, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v6

    if-eqz v6, :cond_54

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 239
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 240
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 241
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_54

    iget-boolean v6, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 242
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v4

    goto :goto_16

    :cond_54
    move v6, v3

    :goto_16
    if-eqz v6, :cond_55

    const/4 v6, 0x3

    goto :goto_17

    :cond_55
    move v6, v2

    .line 243
    :goto_17
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AISceneMode"

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-boolean p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 245
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_56

    goto :goto_18

    .line 246
    :cond_56
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p0

    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 247
    invoke-static {p0, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_57

    move p0, v4

    goto :goto_19

    :cond_57
    :goto_18
    move p0, v3

    .line 248
    :goto_19
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 249
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 250
    invoke-static {v6, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_58
    if-eq v4, p1, :cond_5a

    const/16 p0, 0x1e

    if-ne p0, p1, :cond_59

    goto :goto_1a

    :cond_59
    const/4 p0, 0x3

    goto :goto_1b

    .line 251
    :cond_5a
    :goto_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 252
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 253
    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 254
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v7, "HDR_PLUS"

    .line 255
    invoke-static {v6, v7}, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->getAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 256
    new-instance v7, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 257
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    .line 258
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    long-to-int v10, v10

    .line 259
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    long-to-int v6, v11

    invoke-direct {v7, v8, v10, v6}, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;-><init>(III)V

    .line 260
    invoke-virtual {v0, v7, p0}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusModelFileParams(Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 261
    invoke-virtual {v0, p0}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusMode$enumunboxing$(I)V

    goto :goto_1b

    :cond_5b
    const/4 p0, 0x3

    const-string v6, "McfSettingManager"

    const-string v7, "Failed to open HDR+ model file, disabling HDR+"

    .line 262
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusMode$enumunboxing$(I)V

    goto :goto_1b

    :cond_5c
    const/4 p0, 0x3

    .line 264
    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusMode$enumunboxing$(I)V

    :goto_1b
    if-eq v4, p1, :cond_5d

    const/16 v6, 0x20

    if-ne v6, p1, :cond_5e

    .line 265
    :cond_5d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isIgnoringFocus()Z

    move-result v6

    const-string v7, "IgnoreFocus"

    .line 266
    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    :cond_5e
    const-string v6, "OFF"

    const-string v7, "ON"

    const/16 v8, 0x21

    if-eq v4, p1, :cond_5f

    if-ne v8, p1, :cond_64

    .line 267
    :cond_5f
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 268
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    .line 269
    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 270
    check-cast v10, Ljava/lang/String;

    .line 271
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_60

    move v10, p0

    goto :goto_1c

    .line 272
    :cond_60
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    move v10, v2

    goto :goto_1c

    :cond_61
    move v10, v4

    .line 273
    :goto_1c
    invoke-static {v10}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "SetLowLightSelfieBestShot"

    invoke-virtual {v0, v11, v10}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieEnabled()Z

    move-result v10

    if-eqz v10, :cond_62

    .line 275
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    .line 276
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupportedByCurrentMode(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v10

    if-eqz v10, :cond_62

    move v10, v4

    goto :goto_1d

    :cond_62
    move v10, v3

    .line 277
    :goto_1d
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 278
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_63

    move v10, p0

    goto :goto_1e

    :cond_63
    move v10, v2

    :goto_1e
    invoke-virtual {v0, v10}, Lcom/motorola/camera/mcf/McfParameters;->setLowLightSelfieMode$enumunboxing$(I)V

    :cond_64
    if-eq v4, p1, :cond_65

    const/16 v10, 0x22

    if-eq v10, p1, :cond_65

    if-ne v8, p1, :cond_67

    .line 279
    :cond_65
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    .line 280
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfiePreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_66

    move v8, p0

    goto :goto_1f

    :cond_66
    move v8, v2

    .line 281
    :goto_1f
    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "SetLowLightSelfiePreviewMode"

    invoke-virtual {v0, v10, v8}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    if-eq v4, p1, :cond_68

    if-ne v1, p1, :cond_6e

    .line 282
    :cond_68
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 283
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 284
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 285
    check-cast v1, Ljava/lang/String;

    .line 286
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    move v1, p0

    goto :goto_20

    .line 287
    :cond_69
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    move v1, v2

    goto :goto_20

    :cond_6a
    move v1, v4

    .line 288
    :goto_20
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setImageStabilizationBestShot$enumunboxing$(I)V

    .line 289
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 290
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 291
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 292
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 293
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_6b

    move v1, v4

    goto :goto_21

    :cond_6b
    move v1, v3

    :goto_21
    if-eqz v1, :cond_6c

    move v3, v4

    :cond_6c
    if-eqz v3, :cond_6d

    move v1, p0

    goto :goto_22

    :cond_6d
    move v1, v2

    .line 294
    :goto_22
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setImageStabilizationMode$enumunboxing$(I)V

    :cond_6e
    if-eq v4, p1, :cond_6f

    const/16 v1, 0x24

    if-ne v1, p1, :cond_71

    .line 295
    :cond_6f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeContourDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_70

    move v1, p0

    goto :goto_23

    :cond_70
    move v1, v2

    .line 296
    :goto_23
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setEyeContourMode$enumunboxing$(I)V

    :cond_71
    if-eq v4, p1, :cond_72

    if-ne v5, p1, :cond_74

    .line 297
    :cond_72
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfEyeglassReflectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, p0

    goto :goto_24

    :cond_73
    move v1, v2

    :goto_24
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setEyeGlassRecognizerMode$enumunboxing$(I)V

    :cond_74
    if-ne v4, p1, :cond_77

    .line 298
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_75

    move v1, p0

    goto :goto_25

    :cond_75
    move v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setSlowCaptureMode$enumunboxing$(I)V

    .line 299
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v1

    if-eqz v1, :cond_76

    move v1, p0

    goto :goto_26

    :cond_76
    move v1, v2

    :goto_26
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setAppMacroMode$enumunboxing$(I)V

    .line 300
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v1

    const-string v3, "setUseZoomRatio"

    .line 301
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    .line 302
    :cond_77
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_7a

    if-eq v4, p1, :cond_78

    const/16 v1, 0x23

    if-ne v1, p1, :cond_7a

    .line 303
    :cond_78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionAlgoEnabled()Z

    move-result v1

    if-eqz v1, :cond_79

    move v1, p0

    goto :goto_27

    :cond_79
    move v1, v2

    :goto_27
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setSmudgeDetectionMode$enumunboxing$(I)V

    :cond_7a
    if-eq v4, p1, :cond_7b

    const/16 v1, 0x25

    if-ne v1, p1, :cond_7c

    .line 304
    :cond_7b
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 305
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 306
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "AeCompensation"

    .line 307
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    :cond_7c
    if-eq v4, p1, :cond_7d

    const/16 v1, 0x2a

    if-ne v1, p1, :cond_7e

    .line 308
    :cond_7d
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 309
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 310
    check-cast v1, Ljava/lang/String;

    .line 311
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setMeisheEffectFileName(Ljava/lang/String;)V

    :cond_7e
    if-eq v4, p1, :cond_7f

    const/16 v1, 0x2b

    if-ne v1, p1, :cond_81

    .line 312
    :cond_7f
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 313
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 314
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 315
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_80

    move v1, p0

    goto :goto_28

    :cond_80
    move v1, v2

    .line 316
    :goto_28
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setMeisheEffectMode$enumunboxing$(I)V

    :cond_81
    if-eq v4, p1, :cond_82

    if-ne v9, p1, :cond_84

    .line 317
    :cond_82
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCudPreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_83

    move v1, p0

    goto :goto_29

    :cond_83
    move v1, v2

    .line 319
    :goto_29
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setCudPreviewMode$enumunboxing$(I)V

    :cond_84
    if-eq v4, p1, :cond_85

    const/16 v1, 0x2d

    if-ne v1, p1, :cond_89

    .line 320
    :cond_85
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 321
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 322
    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    move v1, p0

    goto :goto_2a

    .line 324
    :cond_86
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    move v1, v2

    goto :goto_2a

    :cond_87
    move v1, v4

    .line 325
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setCudBestShot$enumunboxing$(I)V

    .line 326
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 327
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCudEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_88

    move v1, p0

    goto :goto_2b

    :cond_88
    move v1, v2

    .line 328
    :goto_2b
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setCudMode$enumunboxing$(I)V

    :cond_89
    if-eq v4, p1, :cond_8a

    const/16 v1, 0x29

    if-ne v1, p1, :cond_8d

    .line 329
    :cond_8a
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 330
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 331
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v4, p1, :cond_8b

    if-ne v2, p1, :cond_8c

    .line 332
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p1

    if-eqz p1, :cond_8c

    :cond_8b
    move v2, p0

    .line 333
    :cond_8c
    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->setDisplayFlashStatus$enumunboxing$(I)V

    .line 334
    :cond_8d
    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_8e
    :goto_2c
    return-void
.end method

.method public final setEnable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mEnable:Z

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 5
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 6
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 9
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 10
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->COLOR_SEGMENTATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 13
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 14
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 15
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK3:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 16
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 17
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 18
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 19
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 20
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 21
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 22
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 23
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 24
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 25
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 26
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 27
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 28
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 29
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 30
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 31
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 32
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 33
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_ALGO_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 34
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_CONTOUR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 35
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 36
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 37
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 38
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 39
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 40
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 41
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 42
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 43
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto/16 :goto_0

    .line 44
    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 45
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 46
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 47
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 48
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 49
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 50
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 51
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 52
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->COLOR_SEGMENTATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 53
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 54
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 55
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 56
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK3:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 57
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 58
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 59
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 60
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 61
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 62
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 63
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 64
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 65
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 66
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 67
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 68
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 69
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 70
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 71
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 72
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 73
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 74
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_ALGO_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 75
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_CONTOUR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 76
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_EYEGLASSES_REFLECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 77
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 78
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 79
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 80
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 81
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 82
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 83
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 84
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_CUD_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p0

    .line 4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x18

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_2

    .line 8
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x1f

    .line 13
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    if-eqz p0, :cond_16

    .line 14
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_4
    if-eqz v0, :cond_16

    .line 15
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 16
    :cond_5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 17
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 18
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 20
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 21
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->setEnable(Z)V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters$enumunboxing$(I)V

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 26
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 27
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 28
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_7

    const/16 v2, 0xb

    goto :goto_1

    .line 29
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v2, 0x15

    .line 30
    :cond_8
    :goto_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(I)V

    .line 31
    invoke-static {p0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    goto/16 :goto_9

    .line 32
    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 33
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x3

    .line 34
    new-instance v4, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v4}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    const/4 v5, 0x2

    .line 35
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v6

    const/4 v7, 0x7

    if-nez v6, :cond_10

    .line 36
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 p0, 0x4

    .line 37
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/16 p0, 0x8

    .line 38
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    const/4 p0, 0x6

    .line 39
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 40
    invoke-virtual {v4, v7}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(I)V

    .line 41
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 42
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 43
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_3

    :cond_c
    move v3, v5

    .line 44
    :goto_3
    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ChromaMode"

    invoke-virtual {v4, v2, p0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_8

    .line 46
    :cond_d
    invoke-virtual {v4, v2}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(I)V

    goto :goto_8

    .line 47
    :cond_e
    :goto_4
    invoke-virtual {v4, v7}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(I)V

    .line 48
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 49
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 50
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_f
    move v3, v5

    .line 51
    :goto_5
    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "SegmentationMode"

    invoke-virtual {v4, v2, p0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_8

    .line 53
    :cond_10
    :goto_6
    iget-boolean v2, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfHdrBokehSupported(Z)Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 54
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfMultiFrameBokehSupported(Z)Z

    move-result p0

    if-nez p0, :cond_11

    .line 55
    invoke-virtual {v4, v7}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(I)V

    .line 56
    :cond_11
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 57
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 58
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_7

    :cond_12
    move v3, v5

    .line 59
    :goto_7
    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "RTBokehMode"

    invoke-virtual {v4, v2, p0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 61
    :goto_8
    invoke-static {v4}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 62
    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 63
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 64
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 65
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    if-eqz p0, :cond_16

    .line 66
    sget-object p1, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_a

    .line 67
    :cond_13
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->setEnable(Z)V

    goto :goto_a

    .line 68
    :cond_14
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 70
    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 71
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(I)V

    .line 72
    invoke-static {p0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 73
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 74
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 75
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    if-eqz p0, :cond_16

    .line 76
    sget-object p1, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_a

    .line 77
    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 78
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->setEnable(Z)V

    :cond_16
    :goto_a
    return-void
.end method
