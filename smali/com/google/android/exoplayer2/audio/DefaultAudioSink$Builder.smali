.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

.field public audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

.field public enableAudioTrackPlaybackParams:Z

.field public enableFloatOutput:Z

.field public offloadMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->offloadMode:I

    .line 4
    sget-object p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method
