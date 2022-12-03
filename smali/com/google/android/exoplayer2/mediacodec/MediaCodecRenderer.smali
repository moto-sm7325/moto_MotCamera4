.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field public static final ADAPTATION_WORKAROUND_BUFFER:[B


# instance fields
.field public final assumedMinimumCodecOperatingRate:F

.field public availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field public final bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

.field public bypassDrainAndReinitialize:Z

.field public bypassEnabled:Z

.field public final bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field public bypassSampleBufferPending:Z

.field public c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

.field public codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

.field public codecAdaptationWorkaroundMode:I

.field public final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

.field public codecDrainAction:I

.field public codecDrainState:I

.field public codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public codecHasOutputMediaFormat:Z

.field public codecHotswapDeadlineMs:J

.field public codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field public codecInputFormat:Lcom/google/android/exoplayer2/Format;

.field public codecNeedsAdaptationWorkaroundBuffer:Z

.field public codecNeedsDiscardToSpsWorkaround:Z

.field public codecNeedsEosBufferTimestampWorkaround:Z

.field public codecNeedsEosFlushWorkaround:Z

.field public codecNeedsEosOutputExceptionWorkaround:Z

.field public codecNeedsEosPropagation:Z

.field public codecNeedsFlushWorkaround:Z

.field public codecNeedsMonoChannelCountWorkaround:Z

.field public codecNeedsSosFlushWorkaround:Z

.field public codecOperatingRate:F

.field public codecOutputMediaFormat:Landroid/media/MediaFormat;

.field public codecOutputMediaFormatChanged:Z

.field public codecReceivedBuffers:Z

.field public codecReceivedEos:Z

.field public codecReconfigurationState:I

.field public codecReconfigured:Z

.field public currentPlaybackSpeed:F

.field public final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field public final enableDecoderFallback:Z

.field public final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public inputFormat:Lcom/google/android/exoplayer2/Format;

.field public inputIndex:I

.field public inputStreamEnded:Z

.field public isDecodeOnlyOutputBuffer:Z

.field public isLastOutputBuffer:Z

.field public largestQueuedPresentationTimeUs:J

.field public lastBufferInStreamPresentationTimeUs:J

.field public final mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

.field public mediaCrypto:Landroid/media/MediaCrypto;

.field public mediaCryptoRequiresSecureDecoder:Z

.field public final noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public outputFormat:Lcom/google/android/exoplayer2/Format;

.field public outputIndex:I

.field public outputStreamEnded:Z

.field public outputStreamOffsetUs:J

.field public outputStreamStartPositionUs:J

.field public pendingOutputEndOfStream:Z

.field public pendingOutputStreamOffsetCount:I

.field public final pendingOutputStreamOffsetsUs:[J

.field public final pendingOutputStreamStartPositionsUs:[J

.field public final pendingOutputStreamSwitchTimesUs:[J

.field public pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field public preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public renderTimeLimitMs:J

.field public shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field public sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public targetPlaybackSpeed:F

.field public waitingForFirstSampleInFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 12
    new-instance p3, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 14
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 15
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 16
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const/16 p5, 0xa

    new-array v0, p5, [J

    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    new-array v0, p5, [J

    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    new-array p5, p5, [J

    .line 20
    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamSwitchTimesUs:[J

    .line 21
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 24
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 26
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 27
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 29
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 30
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 31
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 32
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 33
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 34
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method


# virtual methods
.method public final bypassRender(JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_d

    .line 3
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v3

    .line 5
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 7
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 8
    :cond_1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 11
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 13
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v1, :cond_3

    return v3

    .line 14
    :cond_3
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v1

    .line 16
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 17
    :cond_4
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 18
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_9

    const/4 v5, -0x4

    if-eq v4, v5, :cond_6

    const/4 v1, -0x3

    if-ne v4, v1, :cond_5

    goto :goto_0

    .line 19
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 20
    :cond_6
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 22
    :cond_7
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v4, :cond_8

    .line 23
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 26
    invoke-virtual {v0, v4, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 27
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 28
    :cond_8
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 29
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v5, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 30
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    goto :goto_0

    .line 31
    :cond_9
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 32
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 34
    :cond_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_c

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    move v2, v3

    :cond_c
    :goto_1
    return v2

    :cond_d
    const/4 v5, 0x0

    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    iget-object v6, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v8, 0x0

    .line 36
    iget v9, v1, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    .line 37
    iget-wide v10, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 38
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isDecodeOnly()Z

    move-result v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v13

    iget-object v14, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 40
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    throw v15
.end method

.method public final disableBypass()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void
.end method

.method public final drainAndReinitializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :goto_0
    return-void
.end method

.method public final drainAndUpdateCodecDrmSessionV23()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    :goto_1
    return v1
.end method

.method public final drainOutputBuffer(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-ltz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    if-nez v0, :cond_10

    .line 2
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 5
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_1
    return v13

    .line 7
    :cond_2
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_8

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 8
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 9
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 10
    iget v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v1, :cond_3

    const-string/jumbo v1, "width"

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string v1, "height"

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 13
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    goto :goto_2

    .line 14
    :cond_3
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_4

    const-string v1, "channel-count"

    .line 15
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    :cond_4
    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 17
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    :goto_2
    return v14

    .line 18
    :cond_5
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_6

    iget v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 19
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_7
    return v13

    .line 20
    :cond_8
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_9

    .line 21
    iput-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 22
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0, v13}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return v14

    .line 23
    :cond_9
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_a

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v13

    .line 25
    :cond_a
    iput v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 26
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    .line 27
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    :cond_b
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    if-eqz v0, :cond_c

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    iget-wide v1, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_c

    .line 30
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 31
    :cond_c
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 32
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_3
    if-ge v3, v2, :cond_e

    .line 33
    iget-object v4, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_d

    .line 34
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v14

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    move v0, v13

    .line 35
    :goto_4
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 36
    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    move v0, v14

    goto :goto_5

    :cond_f
    move v0, v13

    :goto_5
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 37
    invoke-virtual {v15, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 38
    :cond_10
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_12

    .line 39
    :try_start_1
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v3, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v4, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p3

    move/from16 v18, v13

    move/from16 v13, v16

    move/from16 v16, v14

    move-object/from16 v14, v17

    .line 40
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_1
    move/from16 v18, v13

    .line 41
    :catch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 42
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_11

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_11
    return v18

    :cond_12
    move/from16 v18, v13

    move/from16 v16, v14

    .line 44
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v14, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 45
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_15

    .line 46
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 47
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    move/from16 v14, v16

    goto :goto_7

    :cond_13
    move/from16 v14, v18

    :goto_7
    const/4 v0, -0x1

    .line 48
    iput v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v14, :cond_14

    return v16

    .line 50
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_15
    return v18
.end method

.method public final feedInputBuffer()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v5, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    iget v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v3, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 6
    :cond_2
    iget v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 7
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 9
    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 11
    :goto_0
    iput v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v2

    .line 12
    :cond_4
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 14
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    array-length v7, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 17
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v3

    .line 18
    :cond_5
    iget v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_7

    move v0, v2

    .line 19
    :goto_1
    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 20
    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 21
    iget-object v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v6, v6, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iput v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 23
    :cond_7
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v5

    .line 25
    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v5, v6, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v6
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 27
    iget-wide v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_8
    const/4 v7, -0x3

    if-ne v6, v7, :cond_9

    return v2

    :cond_9
    const/4 v7, -0x5

    if-ne v6, v7, :cond_b

    .line 28
    iget v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_a

    .line 29
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 30
    iput v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 31
    :cond_a
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return v3

    .line 32
    :cond_b
    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 33
    iget v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_c

    .line 34
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 35
    iput v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 36
    :cond_c
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 37
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_d

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    .line 39
    :cond_d
    :try_start_1
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_e

    goto :goto_2

    .line 40
    :cond_e
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 41
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v2

    :catch_0
    move-exception v0

    .line 43
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 44
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v4

    .line 45
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 46
    throw v0

    .line 47
    :cond_f
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v5, :cond_11

    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/decoder/Buffer;->isKeyFrame()Z

    move-result v5

    if-nez v5, :cond_11

    .line 48
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 49
    iget v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_10

    .line 50
    iput v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_10
    return v3

    .line 51
    :cond_11
    iget-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 52
    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_12

    goto :goto_3

    .line 53
    :cond_12
    iget-object v6, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-nez v6, :cond_13

    new-array v6, v3, [I

    .line 54
    iput-object v6, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 55
    iget-object v7, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v6, v7, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 56
    :cond_13
    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    aget v6, v5, v2

    add-int/2addr v6, v0

    aput v6, v5, v2

    .line 57
    :cond_14
    :goto_3
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    const/4 v5, 0x7

    const/4 v6, 0x3

    if-eqz v0, :cond_1a

    if-nez v4, :cond_1a

    .line 58
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v7, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    move v8, v2

    move v9, v8

    :goto_4
    add-int/lit8 v10, v8, 0x1

    if-ge v10, v7, :cond_18

    .line 60
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    if-ne v9, v6, :cond_15

    if-ne v11, v3, :cond_16

    .line 61
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/lit8 v12, v12, 0x1f

    if-ne v12, v5, :cond_16

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    sub-int/2addr v8, v6

    .line 63
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_15
    if-nez v11, :cond_16

    add-int/lit8 v9, v9, 0x1

    :cond_16
    if-eqz v11, :cond_17

    move v9, v2

    :cond_17
    move v8, v10

    goto :goto_4

    .line 67
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_19

    return v3

    .line 69
    :cond_19
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 70
    :cond_1a
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 71
    iget-object v9, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    const/4 v10, 0x4

    if-eqz v9, :cond_24

    .line 72
    iget-object v11, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 73
    iget-wide v12, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1b

    .line 74
    iput-wide v7, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    .line 75
    :cond_1b
    iget-boolean v12, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    if-eqz v12, :cond_1c

    goto/16 :goto_9

    .line 76
    :cond_1c
    iget-object v7, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 77
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v2

    move v12, v8

    :goto_6
    if-ge v8, v10, :cond_1d

    shl-int/lit8 v12, v12, 0x8

    .line 78
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 79
    :cond_1d
    invoke-static {v12}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_1e

    goto :goto_7

    :cond_1e
    ushr-int/lit8 v7, v12, 0x13

    and-int/2addr v7, v6

    if-ne v7, v3, :cond_1f

    goto :goto_7

    :cond_1f
    ushr-int/lit8 v13, v12, 0x11

    and-int/2addr v13, v6

    if-nez v13, :cond_20

    goto :goto_7

    :cond_20
    ushr-int/lit8 v16, v12, 0xc

    const/16 v10, 0xf

    and-int/lit8 v5, v16, 0xf

    ushr-int/lit8 v12, v12, 0xa

    and-int/2addr v12, v6

    if-eqz v5, :cond_22

    if-eq v5, v10, :cond_22

    if-ne v12, v6, :cond_21

    goto :goto_7

    .line 80
    :cond_21
    invoke-static {v7, v13}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result v5

    goto :goto_8

    :cond_22
    :goto_7
    move v5, v8

    :goto_8
    if-ne v5, v8, :cond_23

    .line 81
    iput-boolean v3, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    .line 82
    iput-wide v14, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    .line 83
    iget-wide v5, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v5, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    const-string v5, "C2Mp3TimestampTracker"

    const-string v6, "MPEG audio header is invalid."

    .line 84
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-wide v5, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    move-wide v7, v5

    goto :goto_9

    .line 86
    :cond_23
    iget v0, v11, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v6, v0

    invoke-virtual {v9, v6, v7}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->getBufferTimestampUs(J)J

    move-result-wide v6

    .line 87
    iget-wide v10, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    int-to-long v12, v5

    add-long/2addr v10, v12

    iput-wide v10, v9, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    move-wide v7, v6

    .line 88
    :goto_9
    iget-wide v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    iget-object v9, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 89
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v9, v9, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;->getBufferTimestampUs(J)J

    move-result-wide v9

    .line 91
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    :cond_24
    move-wide v13, v7

    .line 92
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 93
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_25
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_26

    .line 95
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v13, v14, v5}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 96
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 97
    :cond_26
    iget-wide v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 98
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 99
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/Buffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 100
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 101
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v6, :cond_27

    goto :goto_a

    .line 102
    :cond_27
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 103
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_28

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 110
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v11, -0x4b

    if-ne v6, v11, :cond_28

    const/16 v6, 0x3c

    if-ne v7, v6, :cond_28

    if-ne v8, v3, :cond_28

    const/4 v6, 0x4

    if-ne v9, v6, :cond_28

    if-nez v10, :cond_28

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 112
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget-object v0, v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 115
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "hdr10-plus-info"

    .line 116
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 117
    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 118
    :cond_28
    :goto_a
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 119
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v6, :cond_29

    .line 120
    iget v7, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v7, v3

    iput v7, v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 121
    :cond_29
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_2a

    if-eqz v6, :cond_2a

    .line 122
    iget-wide v6, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 123
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 124
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 125
    iget-object v0, v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v8, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 126
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 127
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    :cond_2a
    if-eqz v4, :cond_2b

    .line 128
    :try_start_2
    iget-object v9, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v12, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V

    goto :goto_b

    .line 129
    :cond_2b
    iget-object v9, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    const/4 v15, 0x0

    .line 131
    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 133
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 134
    iput v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 135
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->queuedInputBufferCount:I

    return v3

    :catch_1
    move-exception v0

    .line 136
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 137
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v4

    .line 138
    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 139
    throw v0

    :catch_2
    move-exception v0

    .line 140
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v3

    :cond_2c
    :goto_c
    return v2
.end method

.method public final flushCodec()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 3
    throw v0
.end method

.method public flushOrReleaseCodec()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v1

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    const/4 p0, 0x1

    return p0
.end method

.method public final getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2
    move-object v2, p0

    check-cast v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 3
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 4
    invoke-static {v0, v1, p1, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v0

    .line 5
    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 10
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x63

    invoke-static {p0, v0}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "Drm session requires secure decoder for "

    const-string v2, ", but no secure decoder available. Trying to proceed with "

    invoke-static {v1, v0, p0, v2, p1}, Lan$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecRenderer"

    .line 16
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3
.end method

.method public abstract getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
.end method

.method public final getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expecting FrameworkCryptoConfig but found: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v1, 0x1771

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    .line 5
    throw p0

    .line 6
    :cond_1
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    return-object p1
.end method

.method public final initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v9, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result v1

    .line 7
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    :cond_1
    move v10, v1

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 9
    iget-object v4, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 10
    move-object v13, v0

    check-cast v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 11
    iget-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    iget-boolean v2, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v1, v2, :cond_2

    .line 12
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseDummySurface()V

    .line 13
    :cond_2
    iget-object v1, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 14
    iget-object v2, v13, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v3, v4, Lcom/google/android/exoplayer2/Format;->width:I

    .line 17
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->height:I

    .line 18
    invoke-static {v8, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    .line 19
    array-length v7, v2

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-ne v7, v15, :cond_4

    if-eq v6, v14, :cond_3

    .line 20
    invoke-static {v8, v4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    if-eq v2, v14, :cond_3

    int-to-float v6, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 21
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 22
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v2, v3, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    move-object/from16 v25, v1

    move-object/from16 v16, v9

    move/from16 v20, v10

    move-wide/from16 v18, v11

    goto/16 :goto_12

    .line 23
    :cond_4
    array-length v7, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v7, :cond_9

    move/from16 v16, v7

    aget-object v7, v2, v14

    move-object/from16 v17, v2

    .line 24
    iget-object v2, v4, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v2, :cond_5

    iget-object v2, v7, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v2, :cond_5

    .line 25
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 26
    iput-object v7, v2, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 28
    :cond_5
    invoke-virtual {v8, v4, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v2, :cond_8

    .line 29
    iget v2, v7, Lcom/google/android/exoplayer2/Format;->width:I

    move-wide/from16 v18, v11

    const/4 v11, -0x1

    if-eq v2, v11, :cond_7

    iget v12, v7, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v12, v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v11, 0x1

    :goto_3
    or-int/2addr v11, v15

    .line 30
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 31
    iget v3, v7, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 32
    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    move v15, v11

    move v5, v3

    move v3, v2

    goto :goto_4

    :cond_8
    move-wide/from16 v18, v11

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    move-object/from16 v2, v17

    move-wide/from16 v11, v18

    goto :goto_1

    :cond_9
    move-wide/from16 v18, v11

    if-eqz v15, :cond_17

    const/16 v2, 0x42

    const-string v7, "Resolutions unknown. Codec max resolution: "

    const-string/jumbo v11, "x"

    .line 33
    invoke-static {v2, v7, v3, v11, v5}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "MediaCodecVideoRenderer"

    .line 34
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v2, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v12, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-le v2, v12, :cond_a

    const/4 v14, 0x1

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_b

    move v15, v2

    goto :goto_6

    :cond_b
    move v15, v12

    :goto_6
    if-eqz v14, :cond_c

    move v2, v12

    :cond_c
    int-to-float v12, v2

    move-object/from16 v16, v9

    int-to-float v9, v15

    div-float/2addr v12, v9

    .line 36
    sget-object v9, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v0, v9

    const/16 v17, 0x0

    move/from16 v20, v10

    move/from16 v10, v17

    :goto_7
    const/16 v17, 0x0

    if-ge v10, v0, :cond_16

    move/from16 v21, v0

    aget v0, v9, v10

    move-object/from16 v22, v9

    int-to-float v9, v0

    mul-float/2addr v9, v12

    float-to-int v9, v9

    if-le v0, v15, :cond_16

    if-gt v9, v2, :cond_d

    goto/16 :goto_e

    :cond_d
    move/from16 v23, v2

    .line 37
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    move/from16 v24, v12

    const/16 v12, 0x15

    if-lt v2, v12, :cond_12

    if-eqz v14, :cond_e

    move v2, v9

    goto :goto_8

    :cond_e
    move v2, v0

    :goto_8
    if-eqz v14, :cond_f

    goto :goto_9

    :cond_f
    move v0, v9

    .line 38
    :goto_9
    iget-object v9, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v9, :cond_10

    goto :goto_a

    .line 39
    :cond_10
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v9

    if-nez v9, :cond_11

    :goto_a
    move-object/from16 v0, v17

    goto :goto_b

    .line 40
    :cond_11
    invoke-static {v9, v2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object v17

    goto :goto_a

    .line 41
    :goto_b
    iget v2, v4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 42
    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v12, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v17, v0

    move-object/from16 v25, v1

    float-to-double v0, v2

    invoke-virtual {v8, v9, v12, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_f

    :cond_12
    move-object/from16 v25, v1

    const/16 v1, 0x10

    .line 43
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int/2addr v0, v1

    .line 44
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    mul-int/2addr v2, v1

    mul-int v1, v0, v2

    .line 45
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v9

    if-gt v1, v9, :cond_15

    .line 46
    new-instance v1, Landroid/graphics/Point;

    if-eqz v14, :cond_13

    move v9, v2

    goto :goto_c

    :cond_13
    move v9, v0

    :goto_c
    if-eqz v14, :cond_14

    goto :goto_d

    :cond_14
    move v0, v2

    .line 47
    :goto_d
    invoke-direct {v1, v9, v0}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :cond_15
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v21

    move-object/from16 v9, v22

    move/from16 v2, v23

    move/from16 v12, v24

    move-object/from16 v1, v25

    goto :goto_7

    :cond_16
    :goto_e
    move-object/from16 v25, v1

    :catch_0
    :goto_f
    move-object/from16 v1, v17

    :goto_10
    if-eqz v1, :cond_18

    .line 48
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 49
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 50
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 51
    iput v3, v0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 52
    iput v5, v0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 54
    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 55
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v0, 0x39

    const-string v1, "Codec max resolution adjusted to: "

    .line 56
    invoke-static {v0, v1, v3, v11, v5}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_17
    move-object/from16 v25, v1

    move-object/from16 v16, v9

    move/from16 v20, v10

    .line 58
    :cond_18
    :goto_11
    new-instance v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v2, v3, v5, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 59
    :goto_12
    iput-object v2, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 60
    iget-boolean v0, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 61
    iget-boolean v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_19

    iget v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    goto :goto_13

    :cond_19
    const/4 v1, 0x0

    .line 62
    :goto_13
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string v5, "mime"

    move-object/from16 v6, v25

    .line 63
    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    const-string/jumbo v6, "width"

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v6, "height"

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    iget-object v5, v4, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/4 v6, 0x0

    .line 67
    :goto_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    const/16 v7, 0xf

    const-string v9, "csd-"

    .line 68
    invoke-static {v7, v9, v6}, Landroidx/preference/R$layout$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 69
    :cond_1a
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1b

    const-string v6, "frame-rate"

    .line 70
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 71
    :cond_1b
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v6, "rotation-degrees"

    invoke-static {v3, v6, v5}, Lkotlinx/coroutines/JobKt;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 72
    iget-object v5, v4, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v5, :cond_1c

    .line 73
    iget v6, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const-string v7, "color-transfer"

    invoke-static {v3, v7, v6}, Lkotlinx/coroutines/JobKt;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 74
    iget v6, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    const-string v7, "color-standard"

    invoke-static {v3, v7, v6}, Lkotlinx/coroutines/JobKt;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 75
    iget v6, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    const-string v7, "color-range"

    invoke-static {v3, v7, v6}, Lkotlinx/coroutines/JobKt;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 76
    iget-object v5, v5, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v5, :cond_1c

    .line 77
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v6, "hdr-static-info"

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 78
    :cond_1c
    iget-object v5, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v6, "video/dolby-vision"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 79
    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 80
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 81
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "profile"

    .line 82
    invoke-static {v3, v6, v5}, Lkotlinx/coroutines/JobKt;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 83
    :cond_1d
    iget v5, v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string v6, "max-width"

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    iget v5, v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string v6, "max-height"

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    iget v2, v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string v5, "max-input-size"

    invoke-static {v3, v5, v2}, Lkotlinx/coroutines/JobKt;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 86
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v9, v2, :cond_1e

    const-string v2, "priority"

    const/4 v5, 0x0

    .line 87
    invoke-virtual {v3, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v20, v2

    if-eqz v2, :cond_1e

    const-string v2, "operating-rate"

    move/from16 v10, v20

    .line 88
    invoke-virtual {v3, v2, v10}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_15

    :cond_1e
    move/from16 v10, v20

    :goto_15
    if-eqz v0, :cond_1f

    const-string v0, "no-post-process"

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v3, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "auto-frc"

    const/4 v5, 0x0

    .line 90
    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_16

    :cond_1f
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_16
    move v11, v2

    move v0, v5

    if-eqz v1, :cond_20

    const-string/jumbo v2, "tunneled-playback"

    .line 91
    invoke-virtual {v3, v2, v11}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v2, "audio-session-id"

    .line 92
    invoke-virtual {v3, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 93
    :cond_20
    iget-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v1, :cond_23

    .line 94
    invoke-virtual {v13, v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 95
    iget-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez v1, :cond_21

    .line 96
    iget-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v2, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v1

    iput-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 97
    :cond_21
    iget-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    iput-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_17

    .line 98
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99
    :cond_23
    :goto_17
    iget-object v5, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 100
    new-instance v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v7, 0x0

    const/16 v14, 0x15

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/16 v1, 0x1f

    if-lt v9, v1, :cond_24

    move-object/from16 v1, p0

    .line 101
    iget-object v2, v1, Lcom/google/android/exoplayer2/BaseRenderer;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 102
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$Api31;->setLogSessionIdToMediaCodecFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    goto :goto_18

    :cond_24
    move-object/from16 v1, p0

    :goto_18
    :try_start_1
    const-string v2, "createCodec:"

    .line 104
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_25
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_19
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 105
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    invoke-interface {v2, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 108
    iput-object v8, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 109
    iput v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 110
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x2

    const-string v5, "OMX.Exynos.avc.dec.secure"

    const/16 v6, 0x19

    move-object/from16 v7, v16

    if-gt v9, v6, :cond_27

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v12, "SM-T585"

    .line 112
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_26

    const-string v12, "SM-A510"

    .line 113
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_26

    const-string v12, "SM-A520"

    .line 114
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_26

    const-string v12, "SM-J700"

    .line 115
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_27

    :cond_26
    move v10, v2

    goto :goto_1a

    :cond_27
    const/16 v10, 0x18

    if-ge v9, v10, :cond_2a

    const-string v10, "OMX.Nvidia.h264.decode"

    .line 116
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    const-string v10, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    :cond_28
    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v12, "flounder"

    .line 117
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    const-string v12, "flounder_lte"

    .line 118
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    const-string v12, "grouper"

    .line 119
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    const-string/jumbo v12, "tilapia"

    .line 120
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    :cond_29
    move v10, v11

    goto :goto_1a

    :cond_2a
    move v10, v0

    .line 121
    :goto_1a
    iput v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 122
    iget-object v10, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-ge v9, v14, :cond_2b

    .line 123
    iget-object v10, v10, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 124
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2b

    const-string v10, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 125
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    move v0, v11

    .line 126
    :cond_2b
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    const/16 v0, 0x13

    const/16 v10, 0x12

    if-lt v9, v10, :cond_2e

    if-ne v9, v10, :cond_2c

    const-string v12, "OMX.SEC.avc.dec"

    .line 127
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2e

    const-string v12, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2e

    :cond_2c
    if-ne v9, v0, :cond_2d

    sget-object v12, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v15, "SM-G800"

    .line 128
    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2d

    const-string v12, "OMX.Exynos.avc.dec"

    .line 129
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_1b

    :cond_2d
    const/4 v5, 0x0

    goto :goto_1c

    :cond_2e
    :goto_1b
    move v5, v11

    .line 130
    :goto_1c
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    const/16 v12, 0x1d

    if-ne v9, v12, :cond_2f

    const-string v5, "c2.android.aac.decoder"

    .line 131
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v5, v11

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x0

    .line 132
    :goto_1d
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    const/16 v5, 0x17

    if-gt v9, v5, :cond_30

    const-string v5, "OMX.google.vorbis.decoder"

    .line 133
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    :cond_30
    if-gt v9, v0, :cond_33

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v5, "hb2000"

    .line 134
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    const-string/jumbo v5, "stvm8"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 135
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    move v0, v11

    goto :goto_1e

    :cond_33
    const/4 v0, 0x0

    .line 137
    :goto_1e
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-ne v9, v14, :cond_34

    const-string v0, "OMX.google.aac.decoder"

    .line 138
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v11

    goto :goto_1f

    :cond_34
    const/4 v0, 0x0

    .line 139
    :goto_1f
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-ge v9, v14, :cond_36

    const-string v0, "OMX.SEC.mp3.dec"

    .line 140
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "samsung"

    .line 141
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v5, "baffin"

    .line 142
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "grand"

    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "fortuna"

    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "gprimelte"

    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "j2y18lte"

    .line 146
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "ms01"

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    move v0, v11

    goto :goto_20

    :cond_36
    const/4 v0, 0x0

    .line 148
    :goto_20
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 149
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    if-gt v9, v10, :cond_37

    .line 150
    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v0, v11, :cond_37

    const-string v0, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 151
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v11

    goto :goto_21

    :cond_37
    const/4 v0, 0x0

    .line 152
    :goto_21
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 153
    iget-object v0, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-gt v9, v6, :cond_38

    const-string v5, "OMX.rk.video_decoder.avc"

    .line 154
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    :cond_38
    const/16 v5, 0x11

    if-gt v9, v5, :cond_39

    const-string v5, "OMX.allwinner.video.decoder.avc"

    .line 155
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    :cond_39
    if-gt v9, v12, :cond_3a

    const-string v5, "OMX.broadcom.video_decoder.tunnel"

    .line 156
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    const-string v5, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Amazon"

    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v5, "AFTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v0, :cond_3c

    :cond_3b
    move v0, v11

    goto :goto_22

    :cond_3c
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_3f

    .line 159
    iget-boolean v0, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_3d

    const/16 v0, 0x17

    if-ge v9, v0, :cond_3d

    move v0, v11

    goto :goto_23

    :cond_3d
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_3e

    goto :goto_24

    :cond_3e
    const/4 v0, 0x0

    goto :goto_25

    :cond_3f
    :goto_24
    move v0, v11

    .line 160
    :goto_25
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 161
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->needsReconfiguration()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 162
    iput-boolean v11, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 163
    iput v11, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 164
    iget v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v0, :cond_40

    move v0, v11

    goto :goto_26

    :cond_40
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 165
    :cond_41
    iget-object v0, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v5, "c2.android.mp3.decoder"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    .line 167
    :cond_42
    iget v0, v1, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    if-ne v0, v2, :cond_43

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v14, 0x3e8

    add-long/2addr v5, v14

    iput-wide v5, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 169
    :cond_43
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    sub-long v5, v3, v18

    .line 170
    iget-object v1, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 171
    iget-object v8, v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v8, :cond_44

    .line 172
    new-instance v10, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_44
    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 174
    iget-object v0, v13, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 175
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v9, v12, :cond_46

    .line 176
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 177
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_46

    aget-object v3, v0, v2

    .line 178
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_45

    goto :goto_28

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_46
    const/4 v11, 0x0

    .line 179
    :goto_28
    iput-boolean v11, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 180
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_47

    iget-boolean v0, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_47

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 182
    iget-object v1, v13, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 183
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-direct {v0, v13, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object v0, v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_47
    return-void

    :catchall_0
    move-exception v0

    .line 185
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 186
    throw v0
.end method

.method public isEnded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public final maybeInitCodecOrBypass()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 9
    :cond_2
    :try_start_0
    new-instance v3, Landroid/media/MediaCrypto;

    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    iget-object v6, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-direct {v3, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v3, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v3, 0x1776

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    .line 14
    throw p0

    .line 15
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    if-eq v0, v4, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v3, v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    .line 21
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    .line 22
    throw p0

    .line 23
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v3, 0xfa1

    .line 25
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    .line 26
    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method public final maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    .line 1
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iput-object v13, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const v3, -0xc34e

    invoke-direct {v2, v1, v0, v11, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 11
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 12
    :goto_2
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_a

    .line 13
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 14
    move-object v0, v1

    check-cast v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 15
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v3, :cond_4

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v12

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_5

    return-void

    .line 16
    :cond_5
    :try_start_1
    invoke-virtual {v1, v8, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    const-string v4, "MediaCodecRenderer"

    if-ne v8, v14, :cond_6

    :try_start_2
    const-string v0, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 17
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x32

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 19
    invoke-virtual {v1, v8, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->initCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V

    goto :goto_2

    .line 20
    :cond_6
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 21
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 24
    iget-object v4, v8, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    invoke-static {v4, v7}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Decoder init failed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 25
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_7

    .line 26
    instance-of v3, v5, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_7

    .line 27
    move-object v3, v5

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_5

    :cond_7
    move-object v9, v13

    :goto_5
    const/4 v10, 0x0

    move-object v3, v0

    move/from16 v7, p2

    .line 28
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 30
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v3, :cond_8

    .line 31
    iput-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_6

    .line 32
    :cond_8
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 34
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    iget-object v5, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    iget-object v7, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    move-object v15, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v3

    move-object/from16 v22, v0

    invoke-direct/range {v15 .. v22}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 35
    iput-object v4, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 36
    :goto_6
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2

    .line 37
    :cond_9
    iget-object v0, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw v0

    .line 38
    :cond_a
    iput-object v13, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    .line 39
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const v2, -0xc34f

    invoke-direct {v0, v1, v13, v11, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method public abstract onCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract onProcessedOutputBuffer(J)V
.end method

.method public onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamStartPositionUs:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamOffsetUs:J

    goto :goto_2

    .line 5
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    array-length v2, v1

    if-ne p1, v2, :cond_2

    sub-int/2addr p1, v0

    .line 6
    aget-wide v1, v1, p1

    const/16 p1, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamStartPositionsUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, p1, v2

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 p2, v1, -0x1

    aput-wide p4, p1, p2

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputStreamSwitchTimesUs:[J

    sub-int/2addr v1, v0

    iget-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    aput-wide p2, p1, v1

    :goto_2
    return-void
.end method

.method public final processEndOfStream()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    :goto_0
    return-void
.end method

.method public abstract processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final readSourceOmittingSampleData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public releaseCodec()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->release()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 5
    iget-object v2, v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 6
    iget-object v3, v2, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 7
    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    return-void

    :catchall_0
    move-exception v1

    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 17
    throw v1

    :catchall_1
    move-exception v1

    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 19
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 24
    throw v1

    :catchall_2
    move-exception v1

    .line 25
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 28
    throw v1
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_7

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 14
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 15
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    .line 19
    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 21
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-wide v3, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result p1

    add-int/2addr p4, p1

    .line 23
    iput p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 25
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 26
    monitor-enter p1

    .line 27
    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 29
    instance-of p4, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p4, :cond_8

    goto :goto_4

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p4

    .line 31
    array-length v2, p4

    if-lez v2, :cond_9

    aget-object p4, p4, v1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "android.media.MediaCodec"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    :goto_4
    move p4, v0

    goto :goto_5

    :cond_9
    move p4, v1

    :goto_5
    if-eqz p4, :cond_d

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    if-lt p2, p3, :cond_b

    .line 33
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_a

    .line 34
    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    goto :goto_6

    :cond_a
    move p2, v1

    :goto_6
    if-eqz p2, :cond_b

    move v1, v0

    :cond_b
    if-eqz v1, :cond_c

    .line 35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 36
    :cond_c
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 37
    move-object p3, p0

    check-cast p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 38
    new-instance p4, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object p3, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-direct {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    .line 39
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 p2, 0xfa3

    .line 40
    invoke-virtual {p0, p4, p1, v1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    .line 41
    :cond_d
    throw p1

    :cond_e
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 43
    throw v0
.end method

.method public abstract resetCodecStateForFlush()V
.end method

.method public resetCodecStateForRelease()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/C2Mp3TimestampTracker;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 16
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 18
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 22
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    return-void
.end method

.method public final resetInputBuffer()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method public final setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method public final shouldContinueRendering(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final updateCodecOperatingRate(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result p1

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    const/4 p0, 0x0

    return p0

    :cond_3
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 11
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_6
    :goto_1
    return v1
.end method

.method public final updateDrmSessionV23()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoConfig(Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-virtual {v1, v2}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void

    :catch_0
    move-exception v1

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v3, 0x1776

    .line 6
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    .line 7
    throw p0
.end method

.method public final updateOutputFormatForTime(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_1

    .line 2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget p2, p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->popFirst()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p1

    .line 6
    move-object p1, p2

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit p1

    throw p0

    :cond_1
    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    if-nez p1, :cond_3

    .line 9
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 11
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    :cond_4
    return-void
.end method
