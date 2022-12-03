.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "GeneralSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1#2:575\n56#3:576\n11328#4:577\n11663#4,3:578\n764#5:581\n855#5,2:582\n1895#5,14:584\n764#5:598\n855#5,2:599\n2190#5,14:601\n*S KotlinDebug\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment\n*L\n166#1:576\n451#1:577\n451#1:578,3\n499#1:581\n499#1:582,2\n501#1:584,14\n504#1:598\n504#1:599,2\n507#1:601,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
        "<init>",
        "()V",
        "MotCamera4-v9.0.28.84_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final resetDialogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f150005

    .line 1
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SMART_COMPOSITION:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$controls_2020$settings$model$DropDownCategoryModel$s$values()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const-string v5, "getCurrentCameraType()"

    const/4 v6, 0x1

    if-ge v4, v3, :cond_3d

    aget v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 3
    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getkey$$com$motorola$camera$ui$controls_2020$settings$model$DropDownCategoryModel(I)I

    move-result v7

    .line 4
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    if-nez v7, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;

    invoke-direct {v8, v0, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 7
    iput-object v8, v7, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    .line 8
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f12038b

    .line 9
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    .line 10
    :cond_2
    iget-object v9, v7, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 11
    :goto_2
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    iget-object v8, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 13
    iget-object v8, v8, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 14
    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 15
    :cond_3
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :cond_4
    :goto_3
    if-ge v10, v9, :cond_18

    aget-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    .line 16
    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 17
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/SwitchPreferenceCompat;

    .line 18
    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v13, :cond_5

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :cond_5
    iget-object v14, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 21
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 22
    sget-object v16, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 23
    invoke-virtual {v15, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_6

    move v13, v6

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_16

    .line 24
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v13

    goto/16 :goto_7

    .line 26
    :cond_7
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v13

    goto/16 :goto_7

    .line 28
    :cond_8
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 29
    sget-object v13, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 30
    iget-object v13, v13, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v13, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    goto/16 :goto_7

    .line 31
    :cond_9
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    .line 32
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    move-result v13

    goto/16 :goto_7

    .line 33
    :cond_a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 34
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    goto/16 :goto_7

    .line 35
    :cond_b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 36
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    goto/16 :goto_7

    .line 37
    :cond_c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_6

    .line 40
    :cond_d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v13

    goto/16 :goto_7

    .line 42
    :cond_e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v13

    goto :goto_7

    .line 44
    :cond_f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 45
    sget-object v13, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v13

    goto :goto_7

    .line 46
    :cond_10
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x0

    .line 48
    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_6

    :cond_11
    const/4 v13, 0x0

    .line 49
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 50
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupportedOnDevice()Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_6

    :cond_12
    const/4 v13, 0x0

    goto :goto_7

    .line 52
    :cond_13
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    move v13, v6

    goto :goto_5

    .line 53
    :cond_14
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    :goto_5
    if-eqz v13, :cond_15

    const/4 v13, 0x0

    .line 54
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v13

    goto :goto_7

    :cond_15
    :goto_6
    move v13, v6

    :goto_7
    if-eqz v13, :cond_16

    move v13, v6

    goto :goto_8

    :cond_16
    const/4 v13, 0x0

    :goto_8
    if-nez v13, :cond_4

    .line 55
    sget-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    if-ne v11, v13, :cond_17

    .line 56
    sget-object v11, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v11

    .line 57
    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;

    invoke-direct {v13, v11, v0, v12, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;-><init>(Lcom/motorola/camera/utility/LensApiHelper;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    invoke-virtual {v11, v13}, Lcom/motorola/camera/utility/LensApiHelper;->checkGoogleLensAvailability(Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;)V

    goto/16 :goto_3

    .line 58
    :cond_17
    invoke-virtual {v0, v12, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    goto/16 :goto_3

    .line 59
    :cond_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v8

    if-nez v8, :cond_19

    .line 60
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 61
    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v8, :cond_1a

    :cond_19
    const v8, 0x7f120389

    .line 62
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 63
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    const v8, 0x7f120385

    .line 64
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 65
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 66
    :cond_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkSupported()Z

    move-result v8

    if-nez v8, :cond_1b

    const v8, 0x7f1203ae

    .line 67
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 68
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 69
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v8

    if-nez v8, :cond_1c

    const v8, 0x7f120380

    .line 70
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 71
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 72
    :cond_1c
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 73
    invoke-static {v8, v6}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_1d

    .line 74
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 75
    invoke-static {v8, v9}, Lcom/motorola/camera/QuickLaunch;->supports(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_1d

    const v8, 0x7f1203a7

    .line 76
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 77
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 78
    :cond_1d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    move-result v8

    if-nez v8, :cond_1e

    const v8, 0x7f1203ba

    .line 79
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 80
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 81
    :cond_1e
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 82
    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v8, :cond_1f

    .line 83
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->ENGINE_PHASE_1:Ljava/lang/Byte;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isEnginePhase(Ljava/lang/Byte;)Z

    move-result v8

    if-eqz v8, :cond_20

    :cond_1f
    const v8, 0x7f1203c2

    .line 84
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 85
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    .line 86
    :cond_20
    sget-object v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v8}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_22

    const-string v10, "nosdcard"

    .line 88
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_22

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 89
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 90
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    .line 91
    invoke-virtual {v8, v10}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v8

    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_9

    :cond_21
    const/4 v8, 0x0

    goto :goto_a

    :cond_22
    :goto_9
    move v8, v6

    :goto_a
    if-nez v8, :cond_24

    const v8, 0x7f1203b7

    .line 93
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 94
    invoke-virtual {v0, v8, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    const v8, 0x7f1203b5

    .line 95
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    if-nez v8, :cond_23

    goto :goto_b

    :cond_23
    const v9, 0x7f1203b4

    .line 97
    iget-object v10, v8, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    :cond_24
    :goto_b
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :cond_25
    :goto_c
    if-ge v10, v9, :cond_39

    aget-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    .line 99
    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    .line 100
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 101
    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    .line 102
    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    if-nez v13, :cond_26

    const/4 v13, 0x0

    goto :goto_d

    .line 103
    :cond_26
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/settings/CameraType;

    :goto_d
    if-nez v13, :cond_27

    .line 104
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :cond_27
    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 106
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    .line 107
    sget-object v15, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 108
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_28

    move v13, v6

    goto :goto_e

    :cond_28
    const/4 v13, 0x0

    :goto_e
    if-eqz v13, :cond_38

    .line 109
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 110
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v11

    goto/16 :goto_11

    .line 111
    :cond_29
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 112
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v11

    goto/16 :goto_11

    .line 113
    :cond_2a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 114
    sget-object v11, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 115
    iget-object v11, v11, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v11, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    goto/16 :goto_11

    .line 116
    :cond_2b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    const/4 v11, 0x0

    .line 117
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    move-result v11

    goto/16 :goto_11

    .line 118
    :cond_2c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 119
    sget-object v11, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    goto/16 :goto_11

    .line 120
    :cond_2d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 121
    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    goto/16 :goto_11

    .line 122
    :cond_2e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 123
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v11

    if-eqz v11, :cond_34

    .line 124
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    move-result v11

    if-nez v11, :cond_34

    goto/16 :goto_10

    .line 125
    :cond_2f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 126
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v11

    goto/16 :goto_11

    .line 127
    :cond_30
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    .line 128
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v11

    goto :goto_11

    .line 129
    :cond_31
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 130
    sget-object v11, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v11

    goto :goto_11

    .line 131
    :cond_32
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 132
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v11

    if-eqz v11, :cond_34

    const/4 v11, 0x0

    .line 133
    invoke-static {v11}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    move-result v11

    if-eqz v11, :cond_34

    goto :goto_10

    :cond_33
    const/4 v13, 0x0

    .line 134
    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 135
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 136
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupportedOnDevice()Z

    move-result v11

    if-eqz v11, :cond_34

    goto :goto_10

    :cond_34
    const/4 v11, 0x0

    goto :goto_11

    .line 137
    :cond_35
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    move v11, v6

    goto :goto_f

    .line 138
    :cond_36
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    :goto_f
    if-eqz v11, :cond_37

    const/4 v11, 0x0

    .line 139
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    goto :goto_11

    :cond_37
    :goto_10
    move v11, v6

    :goto_11
    if-eqz v11, :cond_38

    move v11, v6

    goto :goto_12

    :cond_38
    const/4 v11, 0x0

    :goto_12
    if-nez v11, :cond_25

    .line 140
    invoke-virtual {v0, v12, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    goto/16 :goto_c

    .line 141
    :cond_39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasSecondaryPhotoSize()Z

    move-result v5

    if-nez v5, :cond_3a

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_3a

    move v5, v6

    goto :goto_13

    :cond_3a
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_3b

    const v5, 0x7f1203aa

    .line 142
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    .line 143
    invoke-virtual {v0, v5, v7}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    :cond_3b
    if-nez v7, :cond_3c

    goto/16 :goto_0

    .line 144
    :cond_3c
    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v5, v6, :cond_0

    .line 145
    iget-object v5, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 146
    iget-object v5, v5, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 147
    invoke-virtual {v5, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3d
    const v2, 0x7f1203b9

    .line 148
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;

    const v3, 0x7f12039b

    .line 149
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;

    .line 150
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v4

    if-nez v4, :cond_3f

    if-eqz v2, :cond_3e

    .line 151
    iget-object v4, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 152
    iget-object v4, v4, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 153
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3e
    if-eqz v3, :cond_44

    .line 154
    iget-object v2, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 155
    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 156
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_16

    :cond_3f
    const/4 v4, 0x0

    .line 157
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v4

    if-nez v4, :cond_40

    if-eqz v3, :cond_44

    .line 158
    iget-object v2, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 159
    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 160
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_16

    :cond_40
    const v4, 0x7f120399

    .line 161
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    const v7, 0x7f12039c

    .line 162
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    if-nez v2, :cond_41

    goto :goto_14

    .line 163
    :cond_41
    new-instance v8, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v3, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;)V

    .line 164
    iput-object v8, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :goto_14
    if-nez v4, :cond_42

    goto :goto_15

    .line 165
    :cond_42
    new-instance v3, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;)V

    .line 166
    iput-object v3, v4, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :goto_15
    if-nez v7, :cond_43

    goto :goto_16

    .line 167
    :cond_43
    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;)V

    .line 168
    iput-object v3, v7, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_44
    :goto_16
    const v2, 0x7f120389

    .line 169
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_45

    goto :goto_17

    .line 170
    :cond_45
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    .line 171
    iput-object v3, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :goto_17
    const v2, 0x7f120385

    .line 172
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_46

    goto :goto_18

    .line 173
    :cond_46
    new-instance v3, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v3, v2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>(Landroidx/preference/Preference;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    .line 174
    iput-object v3, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 175
    :goto_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v2

    const-string v3, "format(format, *args)"

    if-eqz v2, :cond_4b

    const v2, 0x7f1203c0

    .line 176
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_47

    goto :goto_19

    .line 177
    :cond_47
    new-instance v4, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    .line 178
    iput-object v4, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :goto_19
    const v2, 0x7f1203c1

    .line 179
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_48

    goto :goto_1b

    .line 180
    :cond_48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Supported()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 181
    iget-object v4, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f12024a

    .line 182
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v4, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a9

    .line 184
    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 185
    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 186
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a

    .line 187
    :cond_49
    iget-object v4, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f12024b

    .line 188
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v4, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f0801ab

    .line 190
    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 191
    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 192
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_1a
    iget-object v4, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v7, 0x7f12021a

    .line 194
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "context.getString(R.stri\u2026in_setting_hdr10_summary)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/Object;

    .line 195
    iget-object v8, v2, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 196
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v4, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v4, v0, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 199
    iput-object v4, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 200
    :goto_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusWithVSTBSupported()Z

    move-result v2

    if-nez v2, :cond_4b

    const v2, 0x7f1203c2

    .line 201
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_4a

    goto :goto_1c

    .line 202
    :cond_4a
    new-instance v4, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v4, v0, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 203
    iput-object v4, v2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 204
    :cond_4b
    :goto_1c
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 205
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 206
    check-cast v2, Lcom/motorola/camera/launch/OnLaunchAction;

    .line 207
    sget-object v4, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    if-ne v2, v4, :cond_50

    const v2, 0x7f1203b5

    .line 208
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    if-nez v2, :cond_4c

    goto :goto_1e

    :cond_4c
    const/4 v4, 0x0

    .line 209
    iput-boolean v4, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v2, v4}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getPreferenceList(Landroidx/preference/Preference;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    .line 212
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1d

    .line 213
    :cond_4d
    iget-object v2, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    if-eqz v2, :cond_4e

    .line 214
    invoke-interface {v2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;->onExpandFinish()V

    :cond_4e
    :goto_1e
    const v2, 0x7f1203b2

    .line 215
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    if-nez v2, :cond_4f

    goto :goto_1f

    .line 216
    :cond_4f
    iput-boolean v6, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    .line 217
    :cond_50
    :goto_1f
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v2

    array-length v4, v2

    const/4 v6, 0x0

    :goto_20
    const-string v7, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const-string v8, "icon"

    const-string v9, "<this>"

    const-string v10, "context"

    if-ge v6, v4, :cond_6a

    aget-object v11, v2, v6

    add-int/lit8 v6, v6, 0x1

    .line 218
    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    .line 219
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/ListPreference;

    .line 220
    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    if-nez v13, :cond_51

    const/4 v13, 0x0

    goto :goto_21

    .line 221
    :cond_51
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/settings/CameraType;

    .line 222
    :goto_21
    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 223
    check-cast v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    if-nez v12, :cond_52

    move-object/from16 p1, v2

    move/from16 v16, v4

    goto/16 :goto_2a

    :cond_52
    if-nez v13, :cond_53

    .line 224
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    :cond_53
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    .line 226
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 227
    sget-object v16, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 228
    invoke-virtual {v15, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 p1, v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v16, v4

    const/4 v4, 0x1

    if-le v2, v4, :cond_54

    move v2, v4

    goto :goto_22

    :cond_54
    const/4 v2, 0x0

    .line 229
    :goto_22
    iget-boolean v15, v15, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    xor-int/2addr v4, v15

    if-eqz v4, :cond_55

    if-eqz v2, :cond_55

    const/4 v4, 0x1

    goto :goto_23

    :cond_55
    const/4 v4, 0x0

    :goto_23
    if-eqz v2, :cond_63

    .line 230
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 231
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_25

    .line 232
    :cond_56
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 233
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_25

    .line 234
    :cond_57
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 235
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 236
    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_25

    .line 237
    :cond_58
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x0

    .line 238
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_25

    .line 239
    :cond_59
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 240
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_25

    .line 241
    :cond_5a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 242
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_25

    .line 243
    :cond_5b
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 244
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 245
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto :goto_25

    .line 246
    :cond_5c
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 247
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_25

    .line 248
    :cond_5d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 249
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_25

    .line 250
    :cond_5e
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 251
    sget-object v2, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_25

    .line 252
    :cond_5f
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 253
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x0

    .line 254
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    goto :goto_25

    :cond_60
    const/4 v2, 0x0

    .line 255
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_61

    .line 256
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 257
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupportedOnDevice()Z

    goto :goto_25

    .line 258
    :cond_61
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    goto :goto_24

    .line 259
    :cond_62
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_24
    if-eqz v2, :cond_63

    const/4 v2, 0x0

    .line 260
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    .line 261
    :cond_63
    :goto_25
    iput-boolean v4, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 262
    iget-object v2, v14, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 263
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    if-ne v2, v4, :cond_64

    .line 264
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 265
    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v2, :cond_64

    const/4 v2, 0x0

    .line 266
    iput-boolean v2, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 267
    :cond_64
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    .line 268
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 269
    move-object v11, v2

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_68

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_65

    goto/16 :goto_28

    :cond_65
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    .line 270
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/CharSequence;

    .line 271
    iput-object v4, v12, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 272
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 273
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "values.stream().map { it\u2026lect(Collectors.toList())"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 274
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/CharSequence;

    .line 275
    iput-object v2, v12, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 276
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_66

    .line 277
    iget-object v2, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 278
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_26

    .line 279
    :cond_66
    iget-object v2, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v4, 0x7f12039f

    .line 280
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 281
    :goto_26
    invoke-virtual {v12}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v4, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 283
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-boolean v7, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 285
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_67

    const v7, 0x7f0603af

    goto :goto_27

    :cond_67
    const v7, 0x7f060355

    .line 286
    :goto_27
    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 287
    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 288
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2a

    :cond_68
    :goto_28
    const/4 v2, 0x0

    .line 289
    iput-boolean v2, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 290
    iget-object v2, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v4, 0x7f12039f

    .line 291
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v12}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v4, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 294
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-boolean v7, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 296
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_69

    const v7, 0x7f0603af

    goto :goto_29

    :cond_69
    const v7, 0x7f060355

    .line 297
    :goto_29
    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 298
    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 299
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2a
    move-object/from16 v2, p1

    move/from16 v4, v16

    goto/16 :goto_20

    .line 300
    :cond_6a
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v2

    array-length v4, v2

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v4, :cond_8b

    aget-object v11, v2, v6

    add-int/lit8 v6, v6, 0x1

    .line 301
    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    .line 302
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    .line 303
    iget-object v13, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    .line 304
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/settings/CameraType;

    .line 305
    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v12, :cond_6b

    move-object/from16 p1, v2

    move/from16 v16, v4

    move/from16 p2, v6

    goto/16 :goto_3a

    :cond_6b
    if-nez v13, :cond_6c

    .line 306
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    :cond_6c
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type com.motorola.camera.settings.Setting<kotlin.Any>"

    invoke-static {v14, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 309
    sget-object v16, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 310
    invoke-virtual {v15, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 p1, v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v16, v4

    const/4 v4, 0x1

    if-le v2, v4, :cond_6d

    move v2, v4

    goto :goto_2c

    :cond_6d
    const/4 v2, 0x0

    .line 311
    :goto_2c
    iget-boolean v15, v15, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    xor-int/2addr v4, v15

    if-eqz v4, :cond_6e

    if-eqz v2, :cond_6e

    const/4 v4, 0x1

    goto :goto_2d

    :cond_6e
    const/4 v4, 0x0

    :goto_2d
    if-eqz v2, :cond_7c

    .line 312
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 313
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_2f

    .line 314
    :cond_6f
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 315
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_2f

    .line 316
    :cond_70
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 317
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 318
    iget-object v2, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 319
    :cond_71
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x0

    .line 320
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_2f

    .line 321
    :cond_72
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 322
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_2f

    .line 323
    :cond_73
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 324
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_2f

    .line 325
    :cond_74
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 326
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 327
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto :goto_2f

    .line 328
    :cond_75
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 329
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_2f

    .line 330
    :cond_76
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 331
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_2f

    .line 332
    :cond_77
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 333
    sget-object v2, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_2f

    .line 334
    :cond_78
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 335
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x0

    .line 336
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    goto :goto_2f

    :cond_79
    const/4 v2, 0x0

    .line 337
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7a

    .line 338
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 339
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupportedOnDevice()Z

    goto :goto_2f

    .line 340
    :cond_7a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x1

    goto :goto_2e

    .line 341
    :cond_7b
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_2e
    if-eqz v2, :cond_7c

    const/4 v2, 0x0

    .line 342
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    .line 343
    :cond_7c
    :goto_2f
    invoke-static {v14, v13}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 344
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLockedAspectRatioMode()Z

    move-result v11

    if-nez v11, :cond_87

    invoke-static {v2}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v11

    if-nez v11, :cond_7d

    goto/16 :goto_37

    .line 345
    :cond_7d
    sget-object v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion;

    .line 346
    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v2

    const-string v11, "getSupportedAspectRatio(loadValue)"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-static {v13, v14, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Companion;->getResolutions(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/PreviewSize$AspectRatio;)Ljava/util/ArrayList;

    move-result-object v2

    .line 348
    new-instance v11, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v2, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_30
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 350
    check-cast v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 351
    iget-boolean v15, v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    if-eqz v15, :cond_7e

    .line 352
    sget-object v15, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    move/from16 p2, v6

    const v6, 0x7f1203ac

    .line 353
    invoke-virtual {v15, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v15, "getInstance().getString(\u2026otos_resolutions_summary)"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object/from16 v17, v13

    new-array v13, v15, [Ljava/lang/Object;

    .line 354
    iget-object v14, v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v14, v13, v18

    .line 355
    invoke-static {v13, v15, v6, v3}, Lcom/motorola/camera/mediacodec/CodecUtil$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_31

    :cond_7e
    move/from16 p2, v6

    move-object/from16 v17, v13

    .line 356
    iget-object v6, v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    .line 357
    :goto_31
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, p2

    move-object/from16 v13, v17

    goto :goto_30

    :cond_7f
    move/from16 p2, v6

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 358
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, [Ljava/lang/CharSequence;

    .line 359
    iput-object v6, v12, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 360
    new-instance v6, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_32
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_80

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 362
    check-cast v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 363
    iget-object v13, v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    .line 364
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_80
    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/String;

    .line 365
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, [Ljava/lang/CharSequence;

    .line 366
    iput-object v6, v12, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_81

    .line 368
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    goto :goto_34

    .line 369
    :cond_81
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    .line 370
    iget-boolean v13, v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    if-eqz v13, :cond_82

    goto :goto_33

    :cond_83
    const/4 v11, 0x0

    .line 371
    :goto_33
    move-object v6, v11

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    :goto_34
    const-string v11, "<set-?>"

    .line 372
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iput-object v2, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    if-eqz v4, :cond_84

    .line 374
    iget-object v2, v12, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 375
    array-length v2, v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_84

    const/4 v2, 0x1

    goto :goto_35

    :cond_84
    const/4 v2, 0x0

    .line 376
    :goto_35
    iput-boolean v2, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 377
    invoke-virtual {v12}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v4, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-boolean v11, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 381
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_85

    const v11, 0x7f0603af

    goto :goto_36

    :cond_85
    const v11, 0x7f060355

    .line 382
    :goto_36
    sget-object v13, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 383
    invoke-static {v4, v11}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 384
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-nez v6, :cond_86

    goto :goto_3a

    .line 385
    :cond_86
    iget-object v2, v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    .line 386
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 387
    invoke-virtual {v12, v2, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->setValue(Ljava/lang/String;Z)V

    .line 388
    iget-object v2, v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    .line 389
    invoke-virtual {v12, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_87
    :goto_37
    move/from16 p2, v6

    .line 390
    invoke-static {v2}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 391
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    .line 392
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/motorola/camera/settings/Setting;->getSummaryStringsForValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 393
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_89

    .line 394
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_89

    .line 395
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_88

    goto :goto_38

    :cond_88
    invoke-virtual {v12, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_89
    :goto_38
    const/4 v2, 0x0

    .line 396
    iput-boolean v2, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 397
    invoke-virtual {v12}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v4, v12, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-boolean v6, v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    .line 401
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_8a

    const v6, 0x7f0603af

    goto :goto_39

    :cond_8a
    const v6, 0x7f060355

    .line 402
    :goto_39
    sget-object v11, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 403
    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 404
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_3a
    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v4, v16

    goto/16 :goto_2b

    .line 405
    :cond_8b
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_8e

    aget-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 406
    iget v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->key:I

    .line 407
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/preference/SwitchPreferenceCompat;

    .line 408
    iget-object v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->summary:Ljava/lang/Integer;

    if-nez v7, :cond_8c

    const/4 v7, 0x0

    goto :goto_3c

    .line 409
    :cond_8c
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3c
    move-object v12, v7

    .line 410
    iget-object v13, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    .line 411
    iget-object v14, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    .line 412
    iget-object v15, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 413
    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->getSetting:Lkotlin/jvm/functions/Function0;

    if-nez v6, :cond_8d

    const/4 v6, 0x0

    goto :goto_3d

    .line 414
    :cond_8d
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_3d
    move-object/from16 v16, v6

    .line 415
    invoke-static/range {v11 .. v16}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController;->configIntSwitchComponent(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    goto :goto_3b

    .line 416
    :cond_8e
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :cond_8f
    :goto_3e
    if-ge v4, v3, :cond_a9

    aget-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 417
    iget v7, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    .line 418
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreferenceCompat;

    .line 419
    iget-object v8, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    if-nez v8, :cond_90

    const/4 v8, 0x0

    goto :goto_3f

    .line 420
    :cond_90
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 421
    :goto_3f
    iget-object v11, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    .line 422
    iget-object v12, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    .line 423
    iget-object v13, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    .line 424
    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v7, :cond_91

    goto :goto_3e

    :cond_91
    if-nez v13, :cond_92

    .line 425
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    :cond_92
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    .line 427
    sget-object v15, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 428
    invoke-virtual {v14, v13}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_93

    move v13, v15

    goto :goto_40

    :cond_93
    const/4 v13, 0x0

    .line 429
    :goto_40
    iget-boolean v14, v14, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    xor-int/2addr v14, v15

    if-eqz v14, :cond_94

    if-eqz v13, :cond_94

    goto :goto_41

    :cond_94
    const/4 v15, 0x0

    :goto_41
    if-eqz v13, :cond_a2

    .line 430
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_95

    .line 431
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    goto/16 :goto_43

    .line 432
    :cond_95
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_96

    .line 433
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    goto/16 :goto_43

    .line 434
    :cond_96
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_97

    .line 435
    sget-object v13, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 436
    iget-object v13, v13, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v13, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    goto/16 :goto_43

    .line 437
    :cond_97
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMUDGE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_98

    const/4 v13, 0x0

    .line 438
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isSmudgeDetectionCapable(Z)Z

    goto/16 :goto_44

    .line 439
    :cond_98
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_99

    .line 440
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_43

    .line 441
    :cond_99
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9a

    .line 442
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    goto/16 :goto_43

    .line 443
    :cond_9a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    .line 444
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 445
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioNoiseReductionSupported()Z

    goto/16 :goto_43

    .line 446
    :cond_9b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9c

    .line 447
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    goto :goto_43

    .line 448
    :cond_9c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 449
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    goto :goto_43

    .line 450
    :cond_9d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9e

    .line 451
    sget-object v13, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper$Companion;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    goto :goto_43

    .line 452
    :cond_9e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9f

    .line 453
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v13

    if-eqz v13, :cond_a2

    const/4 v13, 0x0

    .line 454
    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosStabilizationSupported(Z)Z

    goto :goto_44

    :cond_9f
    const/4 v13, 0x0

    .line 455
    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a0

    .line 456
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 457
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewSupportedOnDevice()Z

    goto :goto_43

    .line 458
    :cond_a0
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    const/4 v13, 0x1

    goto :goto_42

    .line 459
    :cond_a1
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    :goto_42
    if-eqz v13, :cond_a2

    const/4 v13, 0x0

    .line 460
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    goto :goto_44

    :cond_a2
    :goto_43
    const/4 v13, 0x0

    .line 461
    :goto_44
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 462
    invoke-virtual {v7, v15}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 463
    invoke-virtual {v7}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_a3

    .line 464
    iput-boolean v13, v7, Landroidx/preference/Preference;->mPersistent:Z

    .line 465
    :cond_a3
    iget-object v14, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string/jumbo v15, "setting.value"

    .line 466
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v7, v14}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 467
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 468
    check-cast v6, Ljava/lang/Boolean;

    if-nez v6, :cond_a4

    goto :goto_45

    :cond_a4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :goto_45
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 469
    iput-object v6, v7, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v8, :cond_a5

    .line 470
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a5
    if-eqz v11, :cond_8f

    if-eqz v12, :cond_8f

    .line 471
    iget-boolean v6, v7, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v6, :cond_a6

    .line 472
    iget-object v6, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 473
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v13, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 474
    invoke-static {v6, v8}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_46

    .line 475
    :cond_a6
    iget-object v6, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v13, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 477
    invoke-static {v6, v8}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_46
    if-nez v6, :cond_a7

    const/4 v6, 0x0

    goto :goto_48

    .line 478
    :cond_a7
    iget-object v8, v7, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 479
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v13

    .line 480
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_a8

    const v13, 0x7f0603af

    goto :goto_47

    :cond_a8
    const v13, 0x7f060355

    .line 481
    :goto_47
    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 482
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 483
    :goto_48
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 484
    new-instance v6, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v6, v7, v11, v12}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 485
    iput-object v6, v7, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    goto/16 :goto_3e

    :cond_a9
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v0, 0x7f1200fe

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->setHeaderTitle(I)V

    return-void
.end method

.method public final removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 2
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public final resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 3
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->resetTo(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Landroid/util/Size;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<android.util.Size>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/util/Size;

    .line 8
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v6, v5, p2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_5

    .line 11
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    move-object v3, p2

    goto/16 :goto_5

    .line 13
    :cond_4
    move-object v0, p2

    check-cast v0, Landroid/util/Size;

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    .line 15
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    move-object v4, v3

    check-cast v4, Landroid/util/Size;

    .line 17
    invoke-static {v4}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    if-ge v0, v4, :cond_6

    move-object p2, v3

    move v0, v4

    .line 18
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 19
    :cond_7
    instance-of v0, v0, Lcom/motorola/camera/VideoFormat;

    if-eqz v0, :cond_f

    .line 20
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlin.collections.List<com.motorola.camera.VideoFormat>"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/motorola/camera/VideoFormat;

    .line 24
    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v7

    if-gt v7, v0, :cond_9

    .line 25
    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v6, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v7, v6, p2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    move v6, v2

    :goto_3
    if-eqz v6, :cond_8

    .line 26
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    .line 29
    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    move-object v3, v0

    goto :goto_5

    .line 31
    :cond_c
    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    .line 32
    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 33
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 34
    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    .line 35
    iget-object v4, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_e

    move-object v0, v3

    move-object v1, v4

    .line 37
    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_f
    :goto_5
    if-nez v3, :cond_10

    .line 38
    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 39
    :cond_10
    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->resetTo(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
