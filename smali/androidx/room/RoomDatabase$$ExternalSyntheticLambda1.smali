.class public final synthetic Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    const-string/jumbo v0, "this$0"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 5
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/MediaMetadata;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$EventListener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void

    .line 2
    :pswitch_1
    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/PlaybackInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 3
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlaybackStateChanged(I)V

    return-void

    .line 4
    :goto_0
    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekProcessed()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget p1, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return v0

    .line 2
    :goto_1
    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->$r8$clinit:I

    .line 3
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 4
    sget-object p2, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    .line 5
    iput-boolean p1, p2, Lcom/motorola/camera/service/WatermarkGenerator;->mIsTimestampOn:Z

    .line 6
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "pref_key_check_timestamp"

    .line 7
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p0, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->updatePreview()V

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_STATE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 4
    iget v1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzd:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/16 v3, 0xb

    if-eq v1, v3, :cond_6

    .line 5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v3, Ljava/lang/Integer;

    const v4, 0x55d4f78

    .line 9
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 10
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 11
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v5, Ljava/lang/Boolean;

    const-string v6, "installedNewVersionFlag"

    .line 13
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 15
    :cond_1
    :goto_0
    iget v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    const/4 v4, 0x0

    if-ne v0, v2, :cond_5

    .line 16
    invoke-static {v4}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 18
    iget p1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb:I

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "appUpdate - available version: "

    .line 20
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "InAppUpdateUtils"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    invoke-static {v1, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 23
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 24
    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 26
    check-cast p1, Ljava/lang/Integer;

    const-string/jumbo v0, "updatePromptTimesShown"

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-eqz v2, :cond_8

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    .line 29
    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_AVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 30
    invoke-direct {p1, v0, v4}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    .line 32
    sget-object v1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->UPDATE_UNAVAILABLE:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 33
    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    goto :goto_3

    .line 35
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 36
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    return-void
.end method

.method public onSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    return-void
.end method
