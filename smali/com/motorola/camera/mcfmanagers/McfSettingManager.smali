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
    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/mcfmanagers/McfSettingManager;)V

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
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/Collection;

    .line 5
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/Collection;

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

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

    if-eqz v0, :cond_8f

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 8
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v1, :cond_2

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    const-string v4, "AutoNvAllowed"

    .line 10
    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v5

    .line 12
    :goto_3
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "AISceneState"

    invoke-virtual {v0, v6, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, p1, :cond_5

    if-ne v4, p1, :cond_9

    .line 13
    :cond_5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    .line 16
    :goto_4
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 17
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v2, v6, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    if-ne v5, v6, :cond_8

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_5

    :cond_8
    move v1, v5

    .line 19
    :goto_5
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "FlashMode"

    invoke-virtual {v0, v6, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v1, 0x4

    if-eq v2, p1, :cond_a

    if-ne v5, p1, :cond_f

    .line 20
    :cond_a
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 21
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_b

    move v6, v2

    goto :goto_6

    :cond_b
    move v6, v3

    .line 23
    :goto_6
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 24
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v2, :cond_e

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_e

    if-eq v7, v1, :cond_e

    goto :goto_7

    :cond_c
    if-nez v6, :cond_d

    move v6, v2

    goto :goto_8

    :cond_d
    :goto_7
    move v6, v5

    goto :goto_8

    :cond_e
    move v6, v4

    .line 26
    :goto_8
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "HdrMode"

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v6, "\""

    const-string/jumbo v7, "}}"

    const-string/jumbo v8, "{\""

    const/16 v9, 0x2c

    if-eq v2, p1, :cond_10

    if-eq v1, p1, :cond_10

    const/4 v1, 0x5

    if-ne v1, p1, :cond_15

    .line 27
    :cond_10
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 28
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 29
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_11

    goto :goto_9

    :cond_11
    if-ne v5, v1, :cond_12

    move v4, v2

    goto :goto_9

    :cond_12
    move v4, v5

    .line 30
    :goto_9
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 32
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    .line 34
    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 35
    check-cast v10, Ljava/lang/String;

    .line 36
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 37
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 38
    invoke-static {v10}, Lcom/motorola/camera/shared/McfUtil;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 39
    :cond_13
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v11

    .line 40
    iget-boolean v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v12, :cond_14

    .line 41
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_14
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 43
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "BeautificationParams"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v13, "\":{\"beauty-mode\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v12, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, ",\"beauty-level\":"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"beauty-region\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"beauty-device\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-eq v2, p1, :cond_16

    const/16 v1, 0x11

    if-ne v1, p1, :cond_1a

    .line 54
    :cond_16
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 55
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 56
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_17

    const/4 v1, 0x3

    goto :goto_a

    :cond_17
    if-ne v5, v1, :cond_18

    move v1, v2

    goto :goto_a

    :cond_18
    move v1, v5

    .line 57
    :goto_a
    iget-boolean v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v4, :cond_19

    .line 58
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    :cond_19
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 60
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "BestShotVideoParams"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "\":{\"bestshotvideo-mode\":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    if-eq v2, p1, :cond_1b

    const/4 v1, 0x6

    if-ne v1, p1, :cond_1d

    .line 65
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v3

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getBokehLevel()F

    move-result v1

    float-to-int v1, v1

    :goto_b
    const-string v4, "RTBokehBlurLevel"

    .line 66
    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    :cond_1d
    if-eq v2, p1, :cond_1e

    const/16 v1, 0x15

    if-eq v1, p1, :cond_1e

    const/16 v1, 0x16

    if-ne v1, p1, :cond_21

    .line 67
    :cond_1e
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 68
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 69
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 70
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x3

    goto :goto_c

    :cond_1f
    move v1, v5

    .line 71
    :goto_c
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 72
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 73
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 74
    iget-boolean v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_20

    .line 75
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_20
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 77
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "SFBokehParams"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\":{\"mode\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
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

    .line 81
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, ",\"level\":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    if-eq v2, p1, :cond_22

    const/16 v1, 0x2d

    if-ne v1, p1, :cond_24

    .line 84
    :cond_22
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 85
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 86
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    .line 87
    iget-boolean v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v1, :cond_23

    .line 88
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_23
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 90
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "PortraitLens"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "\":{\"zoom\":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    if-eq v2, p1, :cond_25

    const/16 v1, 0xe

    if-eq v1, p1, :cond_25

    const/16 v1, 0x26

    if-ne v1, p1, :cond_2b

    .line 95
    :cond_25
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 96
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 97
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 98
    check-cast v1, Ljava/lang/Boolean;

    .line 99
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->COLOR_SEGMENTATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 100
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 101
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 102
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 103
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_26

    move v4, v2

    goto :goto_d

    :cond_26
    move v4, v3

    .line 104
    :goto_d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 105
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x3

    goto :goto_e

    :cond_27
    move v1, v5

    .line 106
    :goto_e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x3

    goto :goto_f

    :cond_28
    move v4, v5

    .line 107
    :goto_f
    iget-boolean v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v10, :cond_29

    .line 108
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_29
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 110
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "SelectiveColorParams"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v10, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\":{\"selective-color-mode\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
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

    .line 114
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-boolean v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v1, :cond_2a

    .line 116
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_2a
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 118
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "ColorSegmentationParams"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "\":{\"color-seg-mode\":"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    const-string v1, ""

    if-eq v2, p1, :cond_2c

    const/16 v4, 0xf

    if-ne v4, p1, :cond_2f

    .line 123
    :cond_2c
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 124
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 125
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v4, v4, 0xff

    .line 126
    iget-boolean v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v11, :cond_2d

    .line 127
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_2d
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 129
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "SelectiveColorSelection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "\":{\"selective-color-R\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v6, v1, v11}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 133
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, ",\"selective-color-G\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v10, v1, v11}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 135
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, ",\"selective-color-B\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v1, v11}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 137
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v11, :cond_2e

    .line 139
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_2e
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 141
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "ColorSegmentationSelection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "\":{\"color-seg-R\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v11, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v6, v1, v11}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 145
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, ",\"color-seg-G\":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v10, v1, v6}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 147
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, ",\"color-seg-B\":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v1, v6}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 149
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    if-eq v2, p1, :cond_30

    const/16 v4, 0x10

    if-ne v4, p1, :cond_33

    .line 150
    :cond_30
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 151
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 152
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 153
    iget-boolean v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v6, :cond_31

    .line 154
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_31
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 156
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "SelectiveColorThreshold"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, "\":{\"selective-color-threshold\":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-static {v1, v4, v10, v6}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 160
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "\"selective-color-threshold-max\":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v11, "600"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-boolean v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v6, :cond_32

    .line 164
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_32
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 166
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "ColorSegmentationThreshold"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v12, "\":{\"color-seg-threshold\":"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v6, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v10, v6}, Lcom/motorola/camera/mcf/McfParameters$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 170
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, "\"color-seg-threshold-max\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    if-eq v2, p1, :cond_34

    const/4 v1, 0x7

    if-ne v1, p1, :cond_35

    .line 173
    :cond_34
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 174
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 175
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    .line 176
    invoke-virtual {v0, v6, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_35
    if-eq v2, p1, :cond_36

    const/16 v1, 0x8

    if-ne v1, p1, :cond_37

    .line 177
    :cond_36
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 178
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 179
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    .line 180
    invoke-virtual {v0, v6, v7, v2}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_37
    if-eq v2, p1, :cond_38

    const/16 v1, 0x9

    if-ne v1, p1, :cond_39

    .line 181
    :cond_38
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 182
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 183
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    .line 184
    invoke-virtual {v0, v6, v7, v5}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_39
    if-eq v2, p1, :cond_3a

    const/16 v1, 0xa

    if-ne v1, p1, :cond_3b

    .line 185
    :cond_3a
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK3:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 186
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 187
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    const/4 v1, 0x3

    .line 188
    invoke-virtual {v0, v6, v7, v1}, Lcom/motorola/camera/mcf/McfParameters;->setDebugParamsMode(JI)V

    :cond_3b
    if-eq v2, p1, :cond_3c

    const/16 v1, 0xb

    if-ne v1, p1, :cond_3d

    .line 189
    :cond_3c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 190
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 191
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 192
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->setDebugLogMask(II)V

    :cond_3d
    if-eq v2, p1, :cond_3e

    const/16 v1, 0xc

    if-ne v1, p1, :cond_40

    .line 193
    :cond_3e
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 194
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 195
    check-cast v1, Ljava/lang/String;

    .line 196
    iget-boolean v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v4, :cond_3f

    .line 197
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :cond_3f
    iput-boolean v3, v0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 199
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v6, "SetDebugLogMaskStr"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v6, "\":{\"type\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v6, ",\"mask\":["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v4, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, v0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, "]}}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    if-eq v2, p1, :cond_41

    const/16 v1, 0xd

    if-ne v1, p1, :cond_42

    .line 206
    :cond_41
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 207
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 208
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->setDebugLogMask(II)V

    :cond_42
    if-eq v2, p1, :cond_43

    const/16 v1, 0x13

    if-ne v1, p1, :cond_45

    .line 210
    :cond_43
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 211
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 212
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x3

    goto :goto_10

    :cond_44
    move v1, v5

    .line 213
    :goto_10
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SuperResolutionMode"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const/16 v1, 0x14

    if-ne v1, p1, :cond_47

    .line 214
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 215
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 216
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x3

    goto :goto_11

    :cond_46
    move v1, v5

    .line 217
    :goto_11
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SuperNightMode"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    const/16 v1, 0x1f

    if-ne v1, p1, :cond_49

    .line 218
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 219
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 220
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x3

    goto :goto_12

    :cond_48
    move v1, v5

    .line 221
    :goto_12
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SuperPortraitMode"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    if-eq v2, p1, :cond_4a

    const/16 v1, 0x18

    if-ne v1, p1, :cond_4b

    .line 222
    :cond_4a
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMLrnSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 223
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 224
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 225
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 226
    check-cast v1, Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setMLrnGroundTruths(Ljava/lang/String;)V

    :cond_4b
    if-eq v2, p1, :cond_4c

    const/16 v1, 0x1a

    if-ne v1, p1, :cond_4f

    .line 228
    :cond_4c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 229
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 230
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 231
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4d

    move v1, v5

    goto :goto_13

    :cond_4d
    const/4 v1, 0x3

    .line 232
    :goto_13
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/mcf/McfParameters;->setAutoCapture$enumunboxing$(II)V

    .line 233
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 234
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 235
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 236
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 237
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 238
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionSupportMode()Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x3

    .line 239
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setMlSmileDetectionMode$enumunboxing$(I)V

    goto :goto_14

    .line 240
    :cond_4e
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$mcf$McfParameters$Modes$v$getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "MlSmileDetectionMode"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_14
    if-eq v2, p1, :cond_50

    const/16 v1, 0x1b

    if-ne v1, p1, :cond_53

    .line 241
    :cond_50
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoCaptureCapable(Lcom/motorola/camera/settings/SettingsManager$Key;Z)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 242
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 243
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 244
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_51

    const/4 v1, 0x3

    goto :goto_15

    :cond_51
    if-ne v5, v1, :cond_52

    move v1, v2

    goto :goto_15

    :cond_52
    move v1, v5

    .line 245
    :goto_15
    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->setAutoCapture$enumunboxing$(II)V

    :cond_53
    if-eq v2, p1, :cond_54

    const/16 v1, 0x1c

    if-ne v1, p1, :cond_58

    .line 246
    :cond_54
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 247
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_55

    goto :goto_16

    .line 248
    :cond_55
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v4, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_56

    move v4, v2

    goto :goto_17

    :cond_56
    :goto_16
    move v4, v3

    :goto_17
    if-eqz v4, :cond_58

    .line 249
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 250
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 251
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_57

    const/4 v1, 0x3

    goto :goto_18

    :cond_57
    move v1, v5

    :goto_18
    const/16 v4, 0x32

    .line 252
    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->setAlgorithmMode$enumunboxing$(II)V

    :cond_58
    const/16 v1, 0x2a

    if-eq v2, p1, :cond_59

    const/16 v4, 0x1d

    if-eq v4, p1, :cond_59

    if-ne v1, p1, :cond_5c

    .line 253
    :cond_59
    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v4

    if-eqz v4, :cond_5a

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 254
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 255
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 256
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 257
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 258
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_5a

    move v4, v2

    goto :goto_19

    :cond_5a
    move v4, v3

    :goto_19
    if-eqz v4, :cond_5b

    const/4 v4, 0x3

    goto :goto_1a

    :cond_5b
    move v4, v5

    .line 259
    :goto_1a
    invoke-virtual {v0, v4}, Lcom/motorola/camera/mcf/McfParameters;->setAISceneMode$enumunboxing$(I)V

    .line 260
    iget-boolean p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    .line 261
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSceneDetectionCapable(Z)Z

    move-result p0

    .line 262
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 263
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 264
    invoke-static {v4, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5c
    if-eq v2, p1, :cond_5e

    const/16 p0, 0x1e

    if-ne p0, p1, :cond_5d

    goto :goto_1b

    :cond_5d
    const/4 p0, 0x3

    goto :goto_1c

    .line 265
    :cond_5e
    :goto_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrPlusMode()Z

    move-result p0

    if-eqz p0, :cond_60

    .line 266
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 267
    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 268
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v6, "HDR_PLUS"

    .line 269
    invoke-static {v4, v6}, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->getAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 270
    new-instance v6, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 271
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    .line 272
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    long-to-int v8, v10

    .line 273
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    long-to-int v4, v10

    invoke-direct {v6, v7, v8, v4}, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;-><init>(III)V

    .line 274
    invoke-virtual {v0, v6, p0}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusModelFileParams(Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 275
    invoke-virtual {v0, p0}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusMode$enumunboxing$(I)V

    goto :goto_1c

    :cond_5f
    const/4 p0, 0x3

    const-string v4, "McfSettingManager"

    const-string v6, "Failed to open HDR+ model file, disabling HDR+"

    .line 276
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v0, v5}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusMode$enumunboxing$(I)V

    goto :goto_1c

    :cond_60
    const/4 p0, 0x3

    .line 278
    invoke-virtual {v0, v5}, Lcom/motorola/camera/mcf/McfParameters;->setHDRPlusMode$enumunboxing$(I)V

    :goto_1c
    if-eq v2, p1, :cond_61

    const/16 v4, 0x20

    if-ne v4, p1, :cond_62

    .line 279
    :cond_61
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isIgnoringFocus()Z

    move-result v4

    const-string v6, "IgnoreFocus"

    .line 280
    invoke-virtual {v0, v6, v4}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    :cond_62
    const-string v4, "OFF"

    const-string v6, "ON"

    const/16 v7, 0x21

    if-eq v2, p1, :cond_63

    if-ne v7, p1, :cond_68

    .line 281
    :cond_63
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 282
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 283
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 284
    check-cast v8, Ljava/lang/String;

    .line 285
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    move v8, p0

    goto :goto_1d

    .line 286
    :cond_64
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    move v8, v5

    goto :goto_1d

    :cond_65
    move v8, v2

    .line 287
    :goto_1d
    invoke-virtual {v0, v8}, Lcom/motorola/camera/mcf/McfParameters;->setLowLightSelfieBestShot$enumunboxing$(I)V

    .line 288
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieEnabled()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 289
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    .line 290
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupportedByCurrentMode(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-eqz v8, :cond_66

    move v8, v2

    goto :goto_1e

    :cond_66
    move v8, v3

    .line 291
    :goto_1e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 292
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_67

    move v8, p0

    goto :goto_1f

    :cond_67
    move v8, v5

    :goto_1f
    invoke-virtual {v0, v8}, Lcom/motorola/camera/mcf/McfParameters;->setLowLightSelfieMode$enumunboxing$(I)V

    :cond_68
    if-eq v2, p1, :cond_69

    const/16 v8, 0x22

    if-eq v8, p1, :cond_69

    if-ne v7, p1, :cond_6b

    .line 293
    :cond_69
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    .line 294
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfiePreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_6a

    move v7, p0

    goto :goto_20

    :cond_6a
    move v7, v5

    .line 295
    :goto_20
    invoke-virtual {v0, v7}, Lcom/motorola/camera/mcf/McfParameters;->setLowLightSelfiePreviewMode$enumunboxing$(I)V

    :cond_6b
    if-eq v2, p1, :cond_6c

    const/16 v7, 0x27

    if-ne v7, p1, :cond_72

    .line 296
    :cond_6c
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 297
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 298
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 299
    check-cast v7, Ljava/lang/String;

    .line 300
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    move v7, p0

    goto :goto_21

    .line 301
    :cond_6d
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    move v7, v5

    goto :goto_21

    :cond_6e
    move v7, v2

    .line 302
    :goto_21
    invoke-virtual {v0, v7}, Lcom/motorola/camera/mcf/McfParameters;->setImageStabilizationBestShot$enumunboxing$(I)V

    .line 303
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 304
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 305
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 306
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    .line 307
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v7

    if-eqz v7, :cond_6f

    move v7, v2

    goto :goto_22

    :cond_6f
    move v7, v3

    :goto_22
    if-eqz v7, :cond_70

    move v3, v2

    :cond_70
    if-eqz v3, :cond_71

    move v3, p0

    goto :goto_23

    :cond_71
    move v3, v5

    .line 308
    :goto_23
    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfParameters;->setImageStabilizationMode$enumunboxing$(I)V

    :cond_72
    if-eq v2, p1, :cond_73

    const/16 v3, 0x24

    if-ne v3, p1, :cond_75

    .line 309
    :cond_73
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEyeContourDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_74

    move v3, p0

    goto :goto_24

    :cond_74
    move v3, v5

    .line 310
    :goto_24
    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfParameters;->setEyeContourMode$enumunboxing$(I)V

    :cond_75
    if-ne v2, p1, :cond_78

    .line 311
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_76

    move v3, p0

    goto :goto_25

    :cond_76
    move v3, v5

    :goto_25
    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfParameters;->setSlowCaptureMode$enumunboxing$(I)V

    .line 312
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v3

    if-eqz v3, :cond_77

    move v3, p0

    goto :goto_26

    :cond_77
    move v3, v5

    :goto_26
    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfParameters;->setAppMacroMode$enumunboxing$(I)V

    .line 313
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v3

    const-string/jumbo v7, "setUseZoomRatio"

    .line 314
    invoke-virtual {v0, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    .line 315
    :cond_78
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_7b

    if-eq v2, p1, :cond_79

    const/16 v3, 0x23

    if-ne v3, p1, :cond_7b

    .line 316
    :cond_79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionAlgoEnabled()Z

    move-result v3

    if-eqz v3, :cond_7a

    move v3, p0

    goto :goto_27

    :cond_7a
    move v3, v5

    :goto_27
    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfParameters;->setSmudgeDetectionMode$enumunboxing$(I)V

    :cond_7b
    if-eq v2, p1, :cond_7c

    const/16 v3, 0x25

    if-ne v3, p1, :cond_7d

    .line 317
    :cond_7c
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 318
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 319
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v7, "AeCompensation"

    .line 320
    invoke-virtual {v0, v7, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;I)V

    :cond_7d
    if-eq v2, p1, :cond_7e

    const/16 v3, 0x29

    if-ne v3, p1, :cond_7f

    .line 321
    :cond_7e
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 322
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 323
    check-cast v3, Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfParameters;->setMeisheEffectFileName(Ljava/lang/String;)V

    :cond_7f
    if-eq v2, p1, :cond_80

    if-ne v1, p1, :cond_82

    .line 325
    :cond_80
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 326
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 327
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 328
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_81

    move v1, p0

    goto :goto_28

    :cond_81
    move v1, v5

    .line 329
    :goto_28
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setMeisheEffectMode$enumunboxing$(I)V

    :cond_82
    if-eq v2, p1, :cond_83

    const/16 v1, 0x2b

    if-ne v1, p1, :cond_85

    .line 330
    :cond_83
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCudPreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_84

    move v1, p0

    goto :goto_29

    :cond_84
    move v1, v5

    .line 332
    :goto_29
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setCudPreviewMode$enumunboxing$(I)V

    :cond_85
    if-eq v2, p1, :cond_86

    if-ne v9, p1, :cond_8a

    .line 333
    :cond_86
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 334
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 335
    check-cast v1, Ljava/lang/String;

    .line 336
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    move v1, p0

    goto :goto_2a

    .line 337
    :cond_87
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    move v1, v5

    goto :goto_2a

    :cond_88
    move v1, v2

    .line 338
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setCudBestShot$enumunboxing$(I)V

    .line 339
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCudEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_89

    move v1, p0

    goto :goto_2b

    :cond_89
    move v1, v5

    .line 341
    :goto_2b
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setCudMode$enumunboxing$(I)V

    :cond_8a
    if-eq v2, p1, :cond_8b

    const/16 v1, 0x28

    if-ne v1, p1, :cond_8e

    .line 342
    :cond_8b
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 343
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 344
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v2, p1, :cond_8c

    if-ne v5, p1, :cond_8d

    .line 345
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p1

    if-eqz p1, :cond_8d

    :cond_8c
    move v5, p0

    .line 346
    :cond_8d
    invoke-virtual {v0, v5}, Lcom/motorola/camera/mcf/McfParameters;->setDisplayFlashStatus$enumunboxing$(I)V

    .line 347
    :cond_8e
    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_8f
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
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 27
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 28
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 29
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 30
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 31
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 32
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 33
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 34
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_ALGO_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 35
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_CONTOUR:Lcom/motorola/camera/settings/SettingsManager$Key;

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
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 68
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 69
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 70
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 71
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 72
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 73
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 74
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 75
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION_ALGO_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mSettingListener:Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 76
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_EYE_CONTOUR:Lcom/motorola/camera/settings/SettingsManager$Key;

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
