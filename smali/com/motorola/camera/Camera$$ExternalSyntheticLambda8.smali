.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;
.implements Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getScore(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/Format;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/DeviceInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/PlaybackInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    sget v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$clinit:I

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Camera;

    sget-object p1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    sget-object v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

    .line 5
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public onFrameUpdate(IZ)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string/jumbo p2, "this$0"

    .line 1
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 4
    iget-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v0, p1

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p1

    mul-long/2addr v2, v0

    check-cast p2, Lcom/google/android/exoplayer2/BasePlayer;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->schedulePlaybackSpeedChangeMessages()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo p0, "viewModel"

    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this$0"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 2
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f1203c1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.preference.SwitchPreferenceCompat"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    .line 8
    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    .line 9
    invoke-direct {p1, v0, v2}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public onSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    return-void
.end method
