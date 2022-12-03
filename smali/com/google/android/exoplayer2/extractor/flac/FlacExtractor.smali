.class public final Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field public binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

.field public final buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public currentFrameBytesWritten:I

.field public currentFrameFirstSampleNumber:J

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

.field public frameStartMarker:I

.field public id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final id3MetadataDisabled:Z

.field public minFrameSize:I

.field public final sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

.field public state:I

.field public final streamMarkerAndInfoBlock:[B

.field public trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 6
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final outputSampleMetadata()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 2
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_23

    const/4 v5, 0x2

    if-eq v2, v3, :cond_22

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eq v2, v5, :cond_20

    const/4 v12, 0x7

    const/4 v13, 0x6

    if-eq v2, v10, :cond_18

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    const/4 v8, 0x5

    if-eq v2, v9, :cond_14

    if-ne v2, v8, :cond_13

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v4

    goto/16 :goto_b

    .line 8
    :cond_0
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    cmp-long v2, v8, v16

    if-nez v2, :cond_5

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 11
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    new-array v6, v3, [B

    .line 12
    invoke-interface {v1, v6, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 13
    aget-byte v6, v6, v4

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    .line 14
    :goto_0
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v12, v13

    .line 15
    :goto_1
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v5, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 16
    iget-object v7, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    invoke-static {v1, v7, v4, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekToLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v7

    .line 18
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 20
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget v1, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long v1, v1

    mul-long/2addr v7, v1

    :goto_2
    move-wide v14, v7

    goto :goto_3

    :catch_0
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    .line 22
    iput-wide v14, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    goto/16 :goto_b

    .line 23
    :cond_4
    invoke-static {v11, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 24
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 25
    iget v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    const v6, 0x8000

    if-ge v5, v6, :cond_8

    .line 26
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int/2addr v6, v5

    .line 27
    invoke-interface {v1, v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    if-nez v3, :cond_7

    .line 28
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_5

    .line 29
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    move v4, v2

    goto/16 :goto_b

    :cond_8
    move v3, v4

    .line 31
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 32
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 33
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge v5, v6, :cond_a

    sub-int/2addr v6, v5

    .line 34
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 35
    :cond_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 36
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 37
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget v5, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 39
    :goto_6
    iget v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit8 v6, v6, -0x10

    if-gt v5, v6, :cond_c

    .line 40
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 41
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-static {v1, v6, v8, v9}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 42
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 43
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    goto :goto_a

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_10

    .line 44
    :goto_7
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 45
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_f

    .line 46
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 47
    :try_start_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 48
    invoke-static {v1, v3, v6, v8}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move v3, v4

    .line 49
    :goto_8
    iget v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 50
    iget v8, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-le v6, v8, :cond_d

    move v3, v4

    :cond_d
    if-eqz v3, :cond_e

    .line 51
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 52
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    goto :goto_a

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 53
    :cond_f
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_9

    .line 54
    :cond_10
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_9
    move-wide/from16 v5, v16

    .line 55
    :goto_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 56
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 58
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 59
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long v1, v5, v16

    if-eqz v1, :cond_11

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    .line 61
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 62
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 63
    :cond_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v7, :cond_12

    .line 64
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 65
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 67
    iget v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 68
    invoke-static {v3, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 70
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :cond_12
    :goto_b
    return v4

    .line 71
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 72
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    new-array v2, v5, [B

    .line 73
    invoke-interface {v1, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 74
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v5

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_17

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 76
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    .line 77
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v23

    .line 80
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 81
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v3, :cond_15

    .line 83
    new-instance v3, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;

    invoke-direct {v3, v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;J)V

    goto :goto_c

    :cond_15
    cmp-long v3, v23, v16

    if-eqz v3, :cond_16

    .line 84
    iget-wide v9, v1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v3, v9, v14

    if-lez v3, :cond_16

    .line 85
    new-instance v3, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move/from16 v20, v7

    move-wide/from16 v21, v5

    invoke-direct/range {v18 .. v24}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;IJJ)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    .line 86
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    goto :goto_c

    .line 87
    :cond_16
    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v5

    .line 88
    invoke-direct {v3, v5, v6, v14, v15}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 89
    :goto_c
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 90
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return v4

    .line 91
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const-string v0, "First frame does not start with sync code."

    .line 92
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 93
    :cond_18
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move v3, v4

    :goto_d
    if-nez v3, :cond_1f

    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 95
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    new-array v5, v9, [B

    invoke-direct {v3, v5, v4, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BILcom/google/android/material/R$dimen$$IA$1;)V

    .line 96
    iget-object v5, v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-interface {v1, v5, v4, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 97
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 98
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 99
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    add-int/2addr v3, v9

    if-nez v6, :cond_19

    const/16 v2, 0x26

    new-array v3, v2, [B

    .line 100
    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 101
    new-instance v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-direct {v2, v3, v9}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>([BI)V

    :goto_e
    move/from16 p2, v5

    goto/16 :goto_11

    :cond_19
    if-eqz v2, :cond_1e

    if-ne v6, v10, :cond_1a

    .line 102
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 103
    iget-object v7, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 104
    invoke-interface {v1, v7, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 105
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v2

    goto :goto_e

    :cond_1a
    if-ne v6, v9, :cond_1b

    .line 107
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 108
    iget-object v7, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 109
    invoke-interface {v1, v7, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 110
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    invoke-static {v6, v4, v4}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object v3

    .line 112
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 113
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v25

    .line 114
    new-instance v3, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v15, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v7, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v14, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v12, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    iget v11, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget v10, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move/from16 v18, v14

    move-object v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v19, v12

    move/from16 v20, v11

    move/from16 v21, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v25}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    move/from16 p2, v5

    goto :goto_10

    :cond_1b
    if-ne v6, v13, :cond_1d

    .line 115
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 116
    iget-object v7, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 117
    invoke-interface {v1, v7, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const/4 v3, 0x4

    .line 118
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 119
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object v3

    .line 120
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 121
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v6, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 122
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v3, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v6

    :goto_f
    move-object/from16 v25, v6

    .line 123
    new-instance v3, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v15, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v7, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v8, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    iget v10, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget v11, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    move/from16 p2, v5

    iget-wide v4, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-object v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move-wide/from16 v22, v4

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v25}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_10
    move-object v2, v3

    goto :goto_11

    :cond_1d
    move/from16 p2, v5

    .line 124
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 125
    :goto_11
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move/from16 v3, p2

    const/4 v4, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x7

    goto/16 :goto_d

    .line 126
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 127
    :cond_1f
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 128
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->minFrameSize:I

    .line 130
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 131
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v2, 0x4

    .line 132
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    const/4 v4, 0x0

    return v4

    :cond_20
    move v2, v9

    new-array v8, v2, [B

    .line 133
    invoke-interface {v1, v8, v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 134
    aget-byte v1, v8, v4

    int-to-long v1, v1

    const-wide/16 v9, 0xff

    and-long/2addr v1, v9

    const/16 v4, 0x18

    shl-long/2addr v1, v4

    aget-byte v3, v8, v3

    int-to-long v3, v3

    and-long/2addr v3, v9

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    aget-byte v3, v8, v5

    int-to-long v3, v3

    and-long/2addr v3, v9

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v4, v8, v3

    int-to-long v4, v4

    and-long/2addr v4, v9

    or-long/2addr v1, v4

    const-wide/32 v4, 0x664c6143

    cmp-long v1, v1, v4

    if-nez v1, :cond_21

    .line 135
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    const/4 v2, 0x0

    return v2

    :cond_21
    const-string v0, "Failed to read FLAC stream marker."

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_22
    move v2, v4

    .line 137
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    array-length v4, v3

    invoke-interface {v1, v3, v2, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 139
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return v2

    .line 140
    :cond_23
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    xor-int/2addr v2, v3

    .line 141
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 142
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    .line 143
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 144
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    .line 145
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 146
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 147
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    .line 4
    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2
    invoke-interface {p1, v1, p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 3
    aget-byte p1, v1, p0

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 p1, 0x18

    shl-long/2addr v2, p1

    const/4 p1, 0x2

    const/4 v0, 0x1

    aget-byte v6, v1, v0

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const/4 v6, 0x3

    aget-byte p1, v1, p1

    int-to-long v7, p1

    and-long/2addr v7, v4

    const/16 p1, 0x8

    shl-long/2addr v7, p1

    or-long/2addr v2, v7

    aget-byte p1, v1, v6

    int-to-long v6, p1

    and-long/2addr v4, v6

    or-long v1, v2, v4

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method
