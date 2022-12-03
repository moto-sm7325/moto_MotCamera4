.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# instance fields
.field public final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

.field public final context:Landroid/content/Context;

.field public mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 4
    sget p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->$r8$clinit:I

    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 13

    move-object v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 3
    new-instance v12, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 4
    iget-object v4, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;

    const-wide/16 v6, 0x1388

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object v9, p1

    move-object v10, p2

    .line 5
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 6
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 8
    new-instance v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;-><init>()V

    .line 9
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 11
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x11

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lt v6, v7, :cond_1

    sget-object v7, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v10, "Amazon"

    .line 12
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Xiaomi"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "external_surround_sound_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 14
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    goto :goto_3

    :cond_2
    const/16 v7, 0x1d

    const/16 v10, 0x8

    if-lt v6, v7, :cond_5

    .line 15
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x17

    if-lt v6, v7, :cond_3

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "android.hardware.type.automotive"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    :goto_1
    if-eqz v8, :cond_5

    .line 17
    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 18
    invoke-static {}, Lcom/google/android/exoplayer2/audio/AudioCapabilities$Api29;->getDirectPlaybackSupportedEncodings()[I

    move-result-object v4

    invoke-direct {v2, v4, v10}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_7

    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    .line 19
    invoke-virtual {v4, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const-string v6, "android.media.extra.ENCODINGS"

    .line 21
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const-string v7, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 22
    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v6, v4}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;-><init>([II)V

    goto :goto_3

    .line 23
    :cond_7
    :goto_2
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 24
    :goto_3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object v2, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 26
    iput-boolean v9, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    .line 27
    iput-boolean v9, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    .line 28
    iput v9, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 29
    iget-object v2, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    if-nez v2, :cond_8

    .line 30
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    new-array v4, v9, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    iput-object v2, v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    .line 31
    :cond_8
    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v2, v3, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 32
    iget-object v2, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const-string v4, "context"

    .line 33
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mediaCodecSelector"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 35
    new-instance v3, Lcom/google/android/exoplayer2/text/TextRenderer;

    move-object/from16 v5, p4

    invoke-direct {v3, v5, v2}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 37
    new-instance v3, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    move-object/from16 v5, p5

    invoke-direct {v3, v5, v2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v2, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    .line 40
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v9, [Lcom/google/android/exoplayer2/Renderer;

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    return-object v0
.end method
