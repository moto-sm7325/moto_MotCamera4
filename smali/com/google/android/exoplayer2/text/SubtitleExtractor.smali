.class public Lcom/google/android/exoplayer2/text/SubtitleExtractor;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field public bytesRead:I

.field public final cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field public seekTimeUs:J

.field public state:I

.field public final subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field public final timestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SubtitleDecoder;Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/CueEncoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const-string/jumbo v0, "text/x-exoplayer-cues"

    .line 6
    iput-object v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 7
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 8
    iput-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x3

    .line 3
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;

    new-array v3, v1, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    new-array v6, v1, [J

    aput-wide v4, v6, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v3, v6, v4, v5}, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x2

    const/16 v3, 0x400

    const-wide/16 v4, -0x1

    if-ne p2, v0, :cond_2

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v3

    .line 6
    :goto_1
    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 8
    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 9
    :cond_2
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v6, 0x4

    const/4 v7, -0x1

    if-ne p2, v2, :cond_b

    .line 10
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 11
    iget-object v2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    .line 12
    iget v8, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    if-ne v2, v8, :cond_3

    add-int/2addr v8, v3

    .line 13
    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 15
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 16
    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 17
    array-length v8, p2

    sub-int/2addr v8, v2

    .line 18
    invoke-interface {p1, p2, v2, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p2

    if-eq p2, v7, :cond_4

    .line 19
    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 20
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-eqz v2, :cond_5

    .line 21
    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    int-to-long v10, v2

    cmp-long v2, v10, v8

    if-eqz v2, :cond_6

    :cond_5
    if-ne p2, v7, :cond_7

    :cond_6
    move p2, v0

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    if-eqz p2, :cond_b

    .line 22
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    :goto_3
    const-wide/16 v8, 0x5

    if-nez p2, :cond_8

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 24
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    goto :goto_3

    .line 25
    :cond_8
    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 26
    iget-object v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 27
    iget-object v10, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 28
    iget v11, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v2, v10, v1, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v10, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 31
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :goto_4
    if-nez p2, :cond_9

    .line 32
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    goto :goto_4

    :cond_9
    move v2, v1

    .line 34
    :goto_5
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 35
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v8

    .line 36
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/text/CueEncoder;->encode(Ljava/util/List;)[B

    move-result-object v8

    .line 37
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v10, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 39
    :cond_a
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    .line 41
    iput v6, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    goto :goto_6

    :catch_0
    move-exception p0

    const-string p1, "SubtitleDecoder failed."

    .line 42
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 43
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 44
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0

    .line 45
    :cond_b
    :goto_6
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_e

    .line 46
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    cmp-long p2, v8, v4

    if-eqz p2, :cond_c

    .line 47
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v3

    .line 48
    :cond_c
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p1

    if-ne p1, v7, :cond_d

    goto :goto_7

    :cond_d
    move v0, v1

    :goto_7
    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    .line 50
    iput v6, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 51
    :cond_e
    iget p0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    if-ne p0, v6, :cond_f

    return v7

    :cond_f
    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 5
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_2
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToOutput()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    invoke-static {v4, v0, v3, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 11
    array-length v8, v3

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 13
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 15
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
