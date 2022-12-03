.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;
    }
.end annotation


# instance fields
.field public activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;

    .line 3
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 4
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    const/16 v0, 0x12

    if-lt p2, v0, :cond_0

    .line 5
    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;

    .line 9
    new-instance v4, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p2, v3, v1

    const/4 p2, 0x2

    aput-object v0, v3, p2

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 11
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 12
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v5, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-array p1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 14
    new-instance p2, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;-><init>()V

    aput-object p2, p1, v5

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 15
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    new-array p1, v5, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->activeAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 17
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method
