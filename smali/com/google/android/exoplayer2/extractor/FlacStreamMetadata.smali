.class public final Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    }
.end annotation


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

.field public final totalSamples:J


# direct methods
.method public constructor <init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 20
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 21
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 22
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 23
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 24
    invoke-static {p5}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 25
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    .line 26
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 27
    invoke-static {p7}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 28
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 29
    iput-object p10, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    .line 30
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BILcom/google/android/material/R$dimen$$IA$1;)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    const/16 p1, 0x20

    const/4 p2, 0x4

    .line 13
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p2

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 14
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v3

    shl-long p1, v3, p1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    or-long/2addr p1, v0

    .line 15
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 16
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    .line 17
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public static getBitsPerSampleLookupKey(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static getSampleRateLookupKey(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .locals 13

    .line 1
    new-instance v12, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v12
.end method

.method public getDurationUs()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 1
    aput-byte v1, p1, v0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p2

    .line 4
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v2, "audio/flac"

    .line 5
    iput-object v2, v1, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 6
    iput v0, v1, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    .line 8
    iput v0, v1, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 9
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 10
    iput p0, v1, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 12
    iput-object p0, v1, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 13
    iput-object p2, v1, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSampleNumber(J)J
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 2
    iget-wide p0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v0, 0x1

    sub-long v6, p0, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    return-wide p0
.end method
