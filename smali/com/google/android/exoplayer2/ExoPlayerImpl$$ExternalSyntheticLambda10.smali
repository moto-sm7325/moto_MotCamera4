.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;
.implements Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;
.implements Lcom/motorola/camera/device/callables/StopRepeatingListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Player;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getScore(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

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

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/PlaybackInfo;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$EventListener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerReleased()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/Player;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/Player$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/Player$EventListener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public onFirstFrame()V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 11
    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    .line 13
    :cond_2
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize(Z)Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$PreviewHolder;)V

    .line 14
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->FIRST_FRAME_RECEIVED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 15
    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 17
    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateShowPreview()V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(Z)V

    .line 20
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_5

    .line 21
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    .line 23
    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    if-eqz v0, :cond_4

    .line 24
    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_4
    if-eqz v0, :cond_5

    .line 25
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 27
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnSmileCaptureDelay()V

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnGestureCaptureDelay()V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->checkForSmudgeDetection(Z)V

    .line 31
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->$r8$clinit:I

    const-string/jumbo p1, "this$0"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onStopRepeating()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v1, v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
