.class public final Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final MAX_FRAME_SIZE_BYTES:I

.field public static final amrSignatureNb:[B

.field public static final amrSignatureWb:[B

.field public static final frameSizeBytesByTypeNb:[I

.field public static final frameSizeBytesByTypeWb:[I


# instance fields
.field public currentSampleBytesRemaining:I

.field public currentSampleSize:I

.field public currentSampleTimeUs:J

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public firstSamplePosition:J

.field public firstSampleSize:I

.field public final flags:I

.field public hasOutputFormat:Z

.field public hasOutputSeekMap:Z

.field public isWideBand:Z

.field public numSamplesWithSameSize:I

.field public final scratch:[B

.field public seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field public timeOffsetUs:J

.field public trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const-string v1, "#!AMR\n"

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    const-string v1, "#!AMR-WB\n"

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    const/16 v1, 0x8

    .line 6
    aget v0, v0, v1

    sput v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->flags:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->scratch:[B

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final peekNextSampleSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 v0, p1, 0x83

    const/4 v3, 0x0

    if-gtz v0, :cond_9

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_5

    if-gt p1, v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_1

    const/16 v4, 0xa

    if-lt p1, v4, :cond_0

    const/16 v4, 0xd

    if-le p1, v4, :cond_1

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v4, :cond_4

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_2

    const/16 v0, 0xe

    if-le p1, v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-nez v1, :cond_7

    .line 5
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_6

    const-string p0, "WB"

    goto :goto_2

    :cond_6
    const-string p0, "NB"

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal AMR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 7
    :cond_7
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget p0, p0, p1

    goto :goto_3

    :cond_8
    sget-object p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p0, p0, p1

    :goto_3
    return p0

    :cond_9
    const/16 p0, 0x2a

    const-string v0, "Invalid padding bits for frame header "

    .line 8
    invoke-static {p0, v0, p1, v3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->readAmrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Could not find AMR header."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 7
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    .line 8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_2

    const-string v5, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v5, "audio/3gpp"

    :goto_1
    if-eqz v1, :cond_3

    const/16 v1, 0x3e80

    goto :goto_2

    :cond_3
    const/16 v1, 0x1f40

    .line 9
    :goto_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v7, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 10
    iput-object v5, v7, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 11
    sget v5, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    .line 12
    iput v5, v7, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 13
    iput v2, v7, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 14
    iput v1, v7, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 15
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 16
    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 17
    :cond_4
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const-wide/16 v5, 0x4e20

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v1, :cond_6

    .line 18
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->peekNextSampleSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 20
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v1, v8, :cond_5

    .line 21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSamplePosition:J

    .line 22
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 23
    :cond_5
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v1, v9, :cond_6

    .line 24
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    goto :goto_3

    :catch_0
    move-object/from16 v10, p1

    goto :goto_4

    .line 25
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    move-object/from16 v10, p1

    .line 26
    invoke-interface {v1, v10, v9, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v1

    if-ne v1, v8, :cond_7

    :goto_4
    move v1, v8

    goto :goto_6

    .line 27
    :cond_7
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v9, v1

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    if-lez v9, :cond_8

    goto :goto_5

    .line 28
    :cond_8
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v12, v14

    const/4 v14, 0x1

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 29
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v11, v5

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    :goto_5
    move v1, v7

    .line 30
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v10

    .line 31
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    if-eqz v9, :cond_9

    goto :goto_9

    .line 32
    :cond_9
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v12, v9, 0x1

    if-eqz v12, :cond_d

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_d

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-eq v15, v8, :cond_a

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v15, v12, :cond_a

    goto :goto_8

    .line 33
    :cond_a
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_b

    if-ne v1, v8, :cond_e

    :cond_b
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_c

    move/from16 v16, v2

    goto :goto_7

    :cond_c
    move/from16 v16, v7

    :goto_7
    mul-int/lit8 v3, v15, 0x8

    int-to-long v3, v3

    const-wide/32 v7, 0xf4240

    mul-long/2addr v3, v7

    .line 34
    div-long/2addr v3, v5

    long-to-int v14, v3

    .line 35
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSamplePosition:J

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    .line 36
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 37
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 38
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    goto :goto_9

    .line 39
    :cond_d
    :goto_8
    new-instance v5, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    invoke-direct {v5, v6, v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 41
    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 42
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 43
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    :cond_e
    :goto_9
    return v1
.end method

.method public final readAmrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 3
    array-length v1, v0

    new-array v1, v1, [B

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 7
    array-length p0, v0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v2

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 10
    array-length v1, v0

    new-array v1, v1, [B

    .line 11
    array-length v4, v0

    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 12
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 14
    array-length p0, v0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v2

    :cond_1
    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 1
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    .line 6
    iget-wide p3, v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->bitrate:I

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->timeOffsetUs:J

    goto :goto_0

    .line 8
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->timeOffsetUs:J

    :goto_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->readAmrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
