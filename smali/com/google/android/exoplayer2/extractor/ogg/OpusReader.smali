.class public final Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field public static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field public static final OPUS_ID_HEADER_SIGNATURE:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method public static peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 3
    array-length v1, p1

    new-array v1, v1, [B

    .line 4
    array-length v3, p1

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 8
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 3
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    sget-object p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 3
    iget p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 4
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x9

    .line 5
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 6
    invoke-static {p0}, Landroidx/appcompat/R$id;->buildInitializationData([B)Ljava/util/List;

    move-result-object p0

    .line 7
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    move p3, p2

    :cond_0
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 8
    new-instance p3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v0, "audio/opus"

    .line 9
    iput-object v0, p3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 10
    iput p1, p3, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    const p1, 0xbb80

    .line 11
    iput p1, p3, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 12
    iput-object p0, p3, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 13
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    return p2

    .line 14
    :cond_1
    sget-object p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplayer2/util/ParsableByteArray;[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    array-length p0, p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    invoke-static {p1, p3, p3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    if-nez p0, :cond_2

    return p2

    .line 20
    :cond_2
    iget-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object p3, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p3, p3, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 22
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    .line 23
    iput-object p0, p1, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    return p2

    .line 25
    :cond_3
    iget-object p0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method
