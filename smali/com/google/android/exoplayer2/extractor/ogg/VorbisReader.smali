.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field public commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

.field public previousPacketBlockSize:I

.field public seenFirstAudioPacket:Z

.field public vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

.field public vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekEnd(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_1

    iget p2, p1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_1
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void
.end method

.method public preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v2, v0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 3
    :cond_0
    aget-byte v0, v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 4
    iget v4, v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    shr-int/2addr v0, v3

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/16 v6, 0xff

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    .line 5
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;->blockFlag:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 8
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    .line 9
    iget-object v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v6, v4

    .line 10
    iget v7, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_3

    .line 11
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 13
    :goto_1
    iget-object v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    iget p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit8 v6, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 15
    aput-byte v9, v4, v6

    add-int/lit8 v6, p1, -0x3

    ushr-long v9, v1, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 16
    aput-byte v5, v4, v6

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 17
    aput-byte v6, v4, v5

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 18
    aput-byte v5, v4, p1

    .line 19
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-wide v1
.end method

.method public readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 4
    :cond_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v5, 0x1

    if-nez v6, :cond_5

    .line 5
    invoke-static {v5, v1, v4}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    if-gtz v5, :cond_1

    const/4 v5, -0x1

    :cond_1
    move v11, v5

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    if-gtz v5, :cond_2

    const/4 v5, -0x1

    :cond_2
    move v12, v5

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    if-gtz v5, :cond_3

    const/4 v5, -0x1

    :cond_3
    move v13, v5

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v6, v5, 0xf

    int-to-double v6, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-double v3, v5

    .line 14
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v15, v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_4

    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    .line 16
    :goto_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    iget v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 18
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v17

    .line 19
    new-instance v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    move-object v7, v1

    move v14, v6

    invoke-direct/range {v7 .. v17}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    .line 20
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    goto :goto_1

    .line 21
    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    if-nez v7, :cond_6

    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v3, v3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_1e

    :cond_6
    const/4 v3, 0x1

    .line 24
    iget v4, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 25
    new-array v8, v4, [B

    .line 26
    iget-object v5, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    .line 27
    invoke-static {v5, v9, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v4, v6, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    const/4 v5, 0x5

    .line 29
    invoke-static {v5, v1, v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    add-int/2addr v10, v3

    .line 31
    new-instance v11, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 32
    iget-object v12, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v13, 0x0

    .line 33
    invoke-direct {v11, v12, v3, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BILcom/google/android/material/R$dimen$$IA$1;)V

    .line 34
    iget v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    mul-int/lit8 v1, v1, 0x8

    .line 35
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :goto_2
    const/16 v1, 0x18

    const/16 v3, 0x10

    if-ge v9, v10, :cond_13

    .line 36
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    const v13, 0x564342

    if-ne v12, v13, :cond_12

    .line 37
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 38
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 39
    new-array v12, v1, [J

    .line 40
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_a

    .line 41
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_3
    if-ge v14, v1, :cond_9

    if-eqz v13, :cond_8

    .line 42
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 43
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object v15, v7

    move-object/from16 v16, v8

    int-to-long v7, v5

    aput-wide v7, v12, v14

    const-wide/16 v7, 0x0

    goto :goto_4

    :cond_7
    move-object v15, v7

    move-object/from16 v16, v8

    const-wide/16 v7, 0x0

    .line 44
    aput-wide v7, v12, v14

    :goto_4
    const/4 v5, 0x5

    goto :goto_5

    :cond_8
    move-object v15, v7

    move-object/from16 v16, v8

    const-wide/16 v7, 0x0

    .line 45
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    add-int/lit8 v7, v17, 0x1

    int-to-long v7, v7

    aput-wide v7, v12, v14

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v16

    goto :goto_3

    :cond_9
    move-object/from16 v16, v8

    move-object/from16 p3, v7

    goto :goto_8

    :cond_a
    move-object v15, v7

    move-object/from16 v16, v8

    .line 46
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_c

    sub-int v8, v1, v7

    .line 47
    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v8, :cond_b

    if-ge v7, v1, :cond_b

    move-object/from16 p3, v15

    int-to-long v14, v5

    .line 48
    aput-wide v14, v12, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, p3

    goto :goto_7

    :cond_b
    move-object/from16 p3, v15

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v15, p3

    goto :goto_6

    :cond_c
    move-object/from16 p3, v15

    :goto_8
    const/4 v5, 0x4

    .line 49
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_11

    const/4 v12, 0x1

    if-eq v7, v12, :cond_d

    if-ne v7, v8, :cond_10

    :cond_d
    const/16 v8, 0x20

    .line 50
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 51
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 52
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v12

    .line 53
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    if-ne v7, v12, :cond_f

    if-eqz v3, :cond_e

    int-to-long v7, v1

    int-to-long v12, v3

    long-to-double v7, v7

    long-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double/2addr v14, v12

    .line 54
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v14, v7

    goto :goto_9

    :cond_e
    const-wide/16 v14, 0x0

    goto :goto_9

    :cond_f
    int-to-long v7, v1

    int-to-long v12, v3

    mul-long v14, v7, v12

    :goto_9
    int-to-long v7, v5

    mul-long/2addr v7, v14

    long-to-int v1, v7

    .line 55
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x5

    move-object/from16 v7, p3

    move-object/from16 v8, v16

    goto/16 :goto_2

    :cond_11
    const/16 v0, 0x35

    const-string v1, "lookup type greater than 2 not decodable: "

    const/4 v2, 0x0

    .line 56
    invoke-static {v0, v1, v7, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_12
    const/4 v0, 0x0

    .line 57
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x42

    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    .line 58
    throw v0

    :cond_13
    move-object/from16 p3, v7

    move-object/from16 v16, v8

    const/4 v1, 0x6

    .line 59
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v5, :cond_15

    .line 60
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    if-nez v8, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_14
    const-string v0, "placeholder of time domain transforms not zeroed out"

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 62
    :cond_15
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    const/4 v8, 0x0

    :goto_b
    const/16 v9, 0x34

    const/4 v10, 0x3

    if-ge v8, v5, :cond_1f

    .line 63
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-eqz v1, :cond_1d

    if-ne v1, v7, :cond_1c

    const/4 v1, 0x5

    .line 64
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 65
    new-array v3, v1, [I

    const/4 v7, 0x0

    const/4 v9, -0x1

    :goto_c
    if-ge v7, v1, :cond_17

    const/4 v12, 0x4

    .line 66
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    aput v12, v3, v7

    .line 67
    aget v12, v3, v7

    if-le v12, v9, :cond_16

    .line 68
    aget v9, v3, v7

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 69
    new-array v7, v9, [I

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v9, :cond_1a

    .line 70
    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v13, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v7, v12

    const/4 v10, 0x2

    .line 71
    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/16 v14, 0x8

    if-lez v10, :cond_18

    .line 72
    invoke-virtual {v11, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_18
    const/4 v15, 0x0

    :goto_e
    shl-int/2addr v13, v10

    if-ge v15, v13, :cond_19

    .line 73
    invoke-virtual {v11, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v15, v15, 0x1

    const/16 v14, 0x8

    const/4 v13, 0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x3

    goto :goto_d

    :cond_1a
    const/4 v9, 0x2

    .line 74
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v9, 0x4

    .line 75
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_f
    if-ge v10, v1, :cond_1e

    .line 76
    aget v14, v3, v10

    .line 77
    aget v14, v7, v14

    add-int/2addr v12, v14

    :goto_10
    if-ge v13, v12, :cond_1b

    .line 78
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1c
    const-string v0, "floor type greater than 1 not decodable: "

    const/4 v2, 0x0

    .line 79
    invoke-static {v9, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_1d
    const/16 v1, 0x8

    .line 80
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v3, 0x10

    .line 81
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 82
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x6

    .line 83
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 84
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x4

    .line 85
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v3, :cond_1e

    .line 86
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x8

    goto :goto_11

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x6

    const/16 v3, 0x10

    const/4 v7, 0x1

    goto/16 :goto_b

    .line 87
    :cond_1f
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v3, :cond_26

    const/16 v8, 0x10

    .line 88
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    const/4 v10, 0x2

    if-gt v8, v10, :cond_25

    const/16 v8, 0x18

    .line 89
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 90
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 91
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 92
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v5, 0x8

    .line 93
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 94
    new-array v8, v1, [I

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v1, :cond_21

    const/4 v12, 0x3

    .line 95
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 96
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    if-eqz v13, :cond_20

    const/4 v13, 0x5

    .line 97
    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    goto :goto_14

    :cond_20
    const/4 v13, 0x0

    :goto_14
    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v12

    .line 98
    aput v13, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_21
    const/4 v10, 0x0

    :goto_15
    if-ge v10, v1, :cond_24

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v5, :cond_23

    .line 99
    aget v13, v8, v10

    const/4 v14, 0x1

    shl-int/2addr v14, v12

    and-int/2addr v13, v14

    if-eqz v13, :cond_22

    .line 100
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_22
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0x8

    goto :goto_16

    :cond_23
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0x8

    goto :goto_15

    :cond_24
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x6

    const/4 v5, 0x1

    goto :goto_12

    :cond_25
    const-string v0, "residueType greater than 2 is not decodable"

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 102
    :cond_26
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_2d

    const/16 v5, 0x10

    .line 103
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-eqz v5, :cond_27

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "VorbisUtil"

    .line 105
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 106
    :cond_27
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x4

    .line 107
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_18

    :cond_28
    const/4 v7, 0x1

    move v5, v7

    .line 108
    :goto_18
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v8, 0x8

    .line 109
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    add-int/2addr v8, v7

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v8, :cond_29

    add-int/lit8 v10, v4, -0x1

    .line 110
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 111
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_29
    const/4 v7, 0x2

    .line 112
    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-nez v7, :cond_2c

    const/4 v7, 0x1

    if-le v5, v7, :cond_2a

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v4, :cond_2a

    const/4 v8, 0x4

    .line 113
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v5, :cond_2b

    const/16 v8, 0x8

    .line 114
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 115
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 116
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2b
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    const-string/jumbo v0, "to reserved bits must be zero after mapping coupling steps"

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_2d
    const/4 v1, 0x6

    .line 118
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 119
    new-array v9, v1, [Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_2e

    .line 120
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/16 v5, 0x10

    .line 121
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 122
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v8, 0x8

    .line 123
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 124
    new-instance v10, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    invoke-direct {v10, v4, v7, v5, v8}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 125
    :cond_2e
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_30

    add-int/lit8 v1, v1, -0x1

    .line 126
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    .line 127
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    move-object v5, v3

    move-object/from16 v7, p3

    move-object/from16 v8, v16

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;[B[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;I)V

    .line 128
    :goto_1e
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    if-nez v3, :cond_2f

    const/4 v0, 0x1

    return v0

    .line 129
    :cond_2f
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 134
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 135
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v5, "audio/vorbis"

    .line 136
    iput-object v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 137
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 138
    iput v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 139
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 140
    iput v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 141
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 142
    iput v5, v4, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 143
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 144
    iput v0, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 145
    iput-object v1, v4, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 146
    iput-object v3, v4, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 147
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x1

    return v0

    :cond_30
    const-string v0, "framing bit after modes not set as expected"

    const/4 v1, 0x0

    .line 148
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public reset(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method
