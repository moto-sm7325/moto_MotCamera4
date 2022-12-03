.class public final synthetic Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;
.implements Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/util/Consumer;
.implements Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$ListSizeChanged;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$RegisterPermissionListener;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/PlaybackInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    sget v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->$r8$clinit:I

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracksInfo:Lcom/google/android/exoplayer2/TracksInfo;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchStatusFetched(I)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Camera;

    const-string v0, "$camera"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expecting status success: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but status received: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LensApiHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mMonkeyUser:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->restartStateMachineAndInitOnResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onListSizeChange()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->updateMultiIntentTranslations()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->onActionsListChanged()V

    return-void
.end method

.method public onPermissionRequestResult(Ljava/util/Map;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraInit$RegisterPermissionListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

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
    iget-object p0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

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
