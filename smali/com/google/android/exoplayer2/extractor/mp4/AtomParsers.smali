.class public final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    }
.end annotation


# static fields
.field public static final opusMagic:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method public static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v3, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 22
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 4
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v5

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 6
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 11
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 15
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 17
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v3, v5

    move v14, v3

    goto :goto_8

    .line 24
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 25
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v6, :cond_a

    move v10, v6

    goto :goto_9

    :cond_a
    move v10, v5

    .line 26
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 27
    iget-object v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v8, v9, v13, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 30
    new-array v8, v7, [B

    .line 31
    iget-object v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v9, v6, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 33
    :goto_a
    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v9, v6

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v6

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    const/4 v6, 0x1

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    const/4 v5, 0x1

    :cond_e
    const-string/jumbo v6, "tenc atom is mandatory"

    .line 34
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 35
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0xc

    .line 1
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 3
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7b

    .line 4
    iget v7, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const-string v10, "childAtomSize must be positive"

    .line 6
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const v11, 0x61766331

    const v12, 0x48323633

    const v13, 0x6d317620

    const v14, 0x656e6376

    if-eq v9, v11, :cond_48

    const v11, 0x61766333

    if-eq v9, v11, :cond_48

    if-eq v9, v14, :cond_48

    if-eq v9, v13, :cond_48

    const v11, 0x6d703476

    if-eq v9, v11, :cond_48

    const v11, 0x68766331

    if-eq v9, v11, :cond_48

    const v11, 0x68657631

    if-eq v9, v11, :cond_48

    const v11, 0x73323633

    if-eq v9, v11, :cond_48

    if-eq v9, v12, :cond_48

    const v11, 0x76703038

    if-eq v9, v11, :cond_48

    const v11, 0x76703039

    if-eq v9, v11, :cond_48

    const v11, 0x61763031

    if-eq v9, v11, :cond_48

    const v11, 0x64766176

    if-eq v9, v11, :cond_48

    const v11, 0x64766131

    if-eq v9, v11, :cond_48

    const v11, 0x64766865

    if-eq v9, v11, :cond_48

    const v11, 0x64766831

    if-ne v9, v11, :cond_1

    goto/16 :goto_22

    :cond_1
    const v11, 0x6d703461

    const v12, 0x656e6361

    const v13, 0x616c6163

    if-eq v9, v11, :cond_c

    if-eq v9, v12, :cond_c

    const v11, 0x61632d33

    if-eq v9, v11, :cond_c

    const v11, 0x65632d33

    if-eq v9, v11, :cond_c

    const v11, 0x61632d34

    if-eq v9, v11, :cond_c

    const v11, 0x6d6c7061

    if-eq v9, v11, :cond_c

    const v11, 0x64747363

    if-eq v9, v11, :cond_c

    const v11, 0x64747365

    if-eq v9, v11, :cond_c

    const v11, 0x64747368

    if-eq v9, v11, :cond_c

    const v11, 0x6474736c

    if-eq v9, v11, :cond_c

    const v11, 0x64747378

    if-eq v9, v11, :cond_c

    const v11, 0x73616d72

    if-eq v9, v11, :cond_c

    const v11, 0x73617762

    if-eq v9, v11, :cond_c

    const v11, 0x6c70636d

    if-eq v9, v11, :cond_c

    const v11, 0x736f7774

    if-eq v9, v11, :cond_c

    const v11, 0x74776f73

    if-eq v9, v11, :cond_c

    const v11, 0x2e6d7032

    if-eq v9, v11, :cond_c

    const v11, 0x2e6d7033

    if-eq v9, v11, :cond_c

    const v11, 0x6d686131

    if-eq v9, v11, :cond_c

    const v11, 0x6d686d31

    if-eq v9, v11, :cond_c

    if-eq v9, v13, :cond_c

    const v11, 0x616c6177

    if-eq v9, v11, :cond_c

    const v11, 0x756c6177

    if-eq v9, v11, :cond_c

    const v11, 0x4f707573

    if-eq v9, v11, :cond_c

    const v11, 0x664c6143

    if-ne v9, v11, :cond_2

    goto/16 :goto_6

    :cond_2
    const v10, 0x54544d4c

    if-eq v9, v10, :cond_5

    const v10, 0x74783367

    if-eq v9, v10, :cond_5

    const v10, 0x77767474

    if-eq v9, v10, :cond_5

    const v10, 0x73747070

    if-eq v9, v10, :cond_5

    const v10, 0x63363038

    if-ne v9, v10, :cond_3

    goto :goto_2

    :cond_3
    const v10, 0x6d657474

    if-ne v9, v10, :cond_4

    add-int/lit8 v10, v7, 0x8

    add-int/lit8 v10, v10, 0x8

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const v10, 0x6d657474

    if-ne v9, v10, :cond_a

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 11
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 12
    iput-object v9, v10, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 13
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iput-object v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_5

    :cond_4
    const v10, 0x63616d6d

    if-ne v9, v10, :cond_a

    .line 14
    new-instance v9, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 15
    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    const-string v10, "application/x-camera-motion"

    .line 16
    iput-object v10, v9, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 17
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iput-object v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_5

    :cond_5
    :goto_2
    add-int/lit8 v10, v7, 0x8

    add-int/lit8 v10, v10, 0x8

    .line 18
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const-wide v10, 0x7fffffffffffffffL

    const v12, 0x54544d4c

    const-string v13, "application/ttml+xml"

    if-ne v9, v12, :cond_6

    goto :goto_3

    :cond_6
    const v12, 0x74783367

    if-ne v9, v12, :cond_7

    add-int/lit8 v9, v8, -0x8

    add-int/lit8 v9, v9, -0x8

    .line 19
    new-array v12, v9, [B

    .line 20
    iget-object v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v14, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v15, 0x0

    invoke-static {v13, v14, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v13, v9

    iput v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 22
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    const-string v12, "application/x-quicktime-tx3g"

    goto :goto_4

    :cond_7
    const v12, 0x77767474

    if-ne v9, v12, :cond_8

    const-string v13, "application/x-mp4-vtt"

    goto :goto_3

    :cond_8
    const v12, 0x73747070

    if-ne v9, v12, :cond_9

    const-wide/16 v9, 0x0

    move-wide v10, v9

    goto :goto_3

    :cond_9
    const v12, 0x63363038

    if-ne v9, v12, :cond_b

    const/4 v9, 0x1

    .line 23
    iput v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v13, "application/x-mp4-cea-608"

    :goto_3
    const/4 v9, 0x0

    move-object v12, v13

    .line 24
    :goto_4
    new-instance v13, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 25
    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 26
    iput-object v12, v13, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 27
    iput-object v2, v13, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 28
    iput-wide v10, v13, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 29
    iput-object v9, v13, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 30
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iput-object v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_a
    :goto_5
    move/from16 v16, v4

    move-object v3, v5

    move/from16 v17, v6

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v4, p2

    goto/16 :goto_45

    .line 31
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_6
    add-int/lit8 v11, v7, 0x8

    const/16 v12, 0x8

    add-int/2addr v11, v12

    .line 32
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v11, 0x6

    if-eqz p5, :cond_d

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 34
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_7

    .line 35
    :cond_d
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v12, 0x0

    :goto_7
    const/16 v11, 0x14

    if-eqz v12, :cond_10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    goto :goto_8

    :cond_e
    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    const/16 v12, 0x10

    .line 36
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 38
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 40
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    move/from16 v16, v4

    goto :goto_9

    :cond_f
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v22, v7

    move/from16 v23, v8

    goto/16 :goto_21

    .line 41
    :cond_10
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    const/4 v11, 0x6

    .line 42
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    iget-object v11, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v14, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    move/from16 v16, v4

    add-int/lit8 v4, v15, 0x1

    iput v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v11, v11, v15

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v11, v14

    add-int/lit8 v4, v4, 0x2

    .line 44
    iput v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v4, -0x4

    .line 45
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const/4 v14, 0x1

    if-ne v12, v14, :cond_11

    const/16 v12, 0x10

    .line 47
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_11
    move v12, v11

    move v11, v4

    .line 48
    :goto_9
    iget v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const v14, 0x656e6361

    if-ne v9, v14, :cond_14

    .line 49
    invoke-static {v0, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 50
    iget-object v9, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v3, :cond_12

    const/4 v15, 0x0

    goto :goto_a

    .line 51
    :cond_12
    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v15

    :goto_a
    move/from16 v17, v9

    .line 52
    iget-object v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v9, v6

    move/from16 v9, v17

    goto :goto_b

    :cond_13
    move-object v15, v3

    .line 53
    :goto_b
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_c

    :cond_14
    move-object v15, v3

    :goto_c
    const-string v14, "audio/ac4"

    const-string v18, "audio/eac3"

    move/from16 v19, v4

    const-string v4, "audio/ac3"

    const-string v20, "audio/raw"

    move/from16 v21, v12

    const v12, 0x61632d33

    if-ne v9, v12, :cond_15

    move-object/from16 v20, v4

    goto/16 :goto_11

    :cond_15
    const v12, 0x65632d33

    if-ne v9, v12, :cond_16

    move-object/from16 v20, v18

    goto/16 :goto_11

    :cond_16
    const v12, 0x61632d34

    if-ne v9, v12, :cond_17

    move-object/from16 v20, v14

    goto/16 :goto_11

    :cond_17
    const v12, 0x64747363

    if-ne v9, v12, :cond_18

    const-string v9, "audio/vnd.dts"

    :goto_d
    move-object/from16 v20, v9

    goto/16 :goto_11

    :cond_18
    const v12, 0x64747368

    if-eq v9, v12, :cond_2b

    const v12, 0x6474736c

    if-ne v9, v12, :cond_19

    goto/16 :goto_10

    :cond_19
    const v12, 0x64747365

    if-ne v9, v12, :cond_1a

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_d

    :cond_1a
    const v12, 0x64747378

    if-ne v9, v12, :cond_1b

    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_d

    :cond_1b
    const v12, 0x73616d72

    if-ne v9, v12, :cond_1c

    const-string v9, "audio/3gpp"

    goto :goto_d

    :cond_1c
    const v12, 0x73617762

    if-ne v9, v12, :cond_1d

    const-string v9, "audio/amr-wb"

    goto :goto_d

    :cond_1d
    const v12, 0x6c70636d

    if-eq v9, v12, :cond_2a

    const v12, 0x736f7774

    if-ne v9, v12, :cond_1e

    goto/16 :goto_f

    :cond_1e
    const v12, 0x74776f73

    if-ne v9, v12, :cond_1f

    const/high16 v9, 0x10000000

    goto :goto_12

    :cond_1f
    const v12, 0x2e6d7032

    if-eq v9, v12, :cond_29

    const v12, 0x2e6d7033

    if-ne v9, v12, :cond_20

    goto :goto_e

    :cond_20
    const v12, 0x6d686131

    if-ne v9, v12, :cond_21

    const-string v9, "audio/mha1"

    goto :goto_d

    :cond_21
    const v12, 0x6d686d31

    if-ne v9, v12, :cond_22

    const-string v9, "audio/mhm1"

    goto :goto_d

    :cond_22
    const v12, 0x616c6163

    if-ne v9, v12, :cond_23

    const-string v9, "audio/alac"

    goto :goto_d

    :cond_23
    const v12, 0x616c6177

    if-ne v9, v12, :cond_24

    const-string v9, "audio/g711-alaw"

    goto :goto_d

    :cond_24
    const v12, 0x756c6177

    if-ne v9, v12, :cond_25

    const-string v9, "audio/g711-mlaw"

    goto :goto_d

    :cond_25
    const v12, 0x4f707573

    if-ne v9, v12, :cond_26

    const-string v9, "audio/opus"

    goto :goto_d

    :cond_26
    const v12, 0x664c6143

    if-ne v9, v12, :cond_27

    const-string v9, "audio/flac"

    goto/16 :goto_d

    :cond_27
    const v12, 0x6d6c7061

    if-ne v9, v12, :cond_28

    const-string v9, "audio/true-hd"

    goto/16 :goto_d

    :cond_28
    const/4 v9, -0x1

    const/16 v20, 0x0

    goto :goto_12

    :cond_29
    :goto_e
    const-string v9, "audio/mpeg"

    goto/16 :goto_d

    :cond_2a
    :goto_f
    const/4 v9, 0x2

    goto :goto_12

    :cond_2b
    :goto_10
    const-string v9, "audio/vnd.dts.hd"

    goto/16 :goto_d

    :goto_11
    const/4 v9, -0x1

    :goto_12
    const/4 v12, 0x0

    const/16 v17, 0x0

    move v3, v13

    move/from16 v13, v21

    move-object/from16 v21, v17

    move/from16 v17, v6

    move-object/from16 v40, v20

    move/from16 v20, v9

    move-object/from16 v9, v40

    move/from16 v41, v19

    move-object/from16 v19, v12

    move/from16 v12, v41

    :goto_13
    sub-int v6, v12, v7

    if-ge v6, v8, :cond_46

    .line 54
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_2c

    const/16 v22, 0x1

    goto :goto_14

    :cond_2c
    const/16 v22, 0x0

    :goto_14
    move/from16 v23, v8

    move/from16 v8, v22

    .line 56
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    move/from16 v22, v7

    const v7, 0x6d686143

    if-ne v8, v7, :cond_2d

    add-int/lit8 v7, v6, -0xd

    .line 58
    new-array v8, v7, [B

    move-object/from16 v24, v10

    add-int/lit8 v10, v12, 0xd

    .line 59
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 60
    iget-object v10, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v25, v6

    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move/from16 v26, v13

    const/4 v13, 0x0

    invoke-static {v10, v6, v8, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 62
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move/from16 v13, v26

    :goto_15
    move-object/from16 v26, v4

    goto/16 :goto_1b

    :cond_2d
    move/from16 v25, v6

    move-object/from16 v24, v10

    move/from16 v26, v13

    const v6, 0x65736473

    if-eq v8, v6, :cond_3d

    if-eqz p5, :cond_2e

    const v6, 0x77617665

    if-ne v8, v6, :cond_2e

    const v6, 0x65736473

    const/4 v7, 0x0

    move/from16 v40, v26

    move-object/from16 v26, v4

    move v4, v7

    move/from16 v7, v40

    goto/16 :goto_1c

    :cond_2e
    const v6, 0x64616333

    if-ne v8, v6, :cond_30

    add-int/lit8 v6, v12, 0x8

    .line 63
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 64
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x6

    .line 66
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v8, v7

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 68
    sget-object v10, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v13, v8, 0x38

    shr-int/lit8 v13, v13, 0x3

    aget v10, v10, v13

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2f

    add-int/lit8 v10, v10, 0x1

    .line 69
    :cond_2f
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 70
    iput-object v6, v8, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 71
    iput-object v4, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 72
    iput v10, v8, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 73
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 74
    iput-object v15, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 75
    iput-object v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 76
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 77
    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_18

    :cond_30
    const v6, 0x64656333

    if-ne v8, v6, :cond_34

    add-int/lit8 v6, v12, 0x8

    .line 78
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 79
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 80
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x6

    .line 82
    sget-object v8, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v7, v8, v7

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 84
    sget-object v10, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v13, v8, 0xe

    shr-int/lit8 v13, v13, 0x1

    aget v10, v10, v13

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_31

    add-int/lit8 v10, v10, 0x1

    .line 85
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x1e

    shr-int/lit8 v8, v8, 0x1

    if-lez v8, :cond_32

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_32

    add-int/lit8 v10, v10, 0x2

    .line 87
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_33

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_33

    const-string v8, "audio/eac3-joc"

    goto :goto_16

    :cond_33
    move-object/from16 v8, v18

    .line 89
    :goto_16
    new-instance v13, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 90
    iput-object v6, v13, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 91
    iput-object v8, v13, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 92
    iput v10, v13, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 93
    iput v7, v13, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 94
    iput-object v15, v13, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 95
    iput-object v2, v13, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 96
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 97
    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_18

    :cond_34
    const v6, 0x64616334

    if-ne v8, v6, :cond_36

    add-int/lit8 v6, v12, 0x8

    .line 98
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 99
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 100
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-ne v8, v7, :cond_35

    const v7, 0xbb80

    goto :goto_17

    :cond_35
    const v7, 0xac44

    .line 102
    :goto_17
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 103
    iput-object v6, v8, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 104
    iput-object v14, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/4 v6, 0x2

    .line 105
    iput v6, v8, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 106
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 107
    iput-object v15, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 108
    iput-object v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 109
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 110
    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_18
    move/from16 v7, v26

    :goto_19
    move-object/from16 v26, v4

    goto/16 :goto_1a

    :cond_36
    const v6, 0x646d6c70

    if-ne v8, v6, :cond_38

    if-lez v11, :cond_37

    const/4 v3, 0x2

    move v13, v11

    move-object/from16 v6, v19

    goto/16 :goto_15

    :cond_37
    const/16 v0, 0x3c

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v1, v11, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_38
    const v6, 0x64647473

    if-ne v8, v6, :cond_39

    .line 112
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 113
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 114
    iput-object v9, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 115
    iput v3, v6, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    move/from16 v7, v26

    .line 116
    iput v7, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 117
    iput-object v15, v6, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 118
    iput-object v2, v6, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 119
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_19

    :cond_39
    move/from16 v7, v26

    const v6, 0x644f7073

    if-ne v8, v6, :cond_3a

    add-int/lit8 v6, v25, -0x8

    .line 120
    sget-object v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v10, v8

    add-int/2addr v10, v6

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    add-int/lit8 v13, v12, 0x8

    .line 121
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 122
    array-length v8, v8

    invoke-virtual {v0, v10, v8, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 123
    invoke-static {v10}, Landroidx/appcompat/R$id;->buildInitializationData([B)Ljava/util/List;

    move-result-object v6

    move v13, v7

    goto/16 :goto_15

    :cond_3a
    const v6, 0x64664c61

    if-ne v8, v6, :cond_3b

    add-int/lit8 v6, v25, -0xc

    add-int/lit8 v8, v6, 0x4

    .line 124
    new-array v8, v8, [B

    const/16 v10, 0x66

    const/4 v13, 0x0

    .line 125
    aput-byte v10, v8, v13

    const/16 v10, 0x4c

    const/4 v13, 0x1

    .line 126
    aput-byte v10, v8, v13

    const/16 v10, 0x61

    const/4 v13, 0x2

    .line 127
    aput-byte v10, v8, v13

    const/16 v10, 0x43

    const/4 v13, 0x3

    .line 128
    aput-byte v10, v8, v13

    add-int/lit8 v10, v12, 0xc

    .line 129
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 130
    iget-object v10, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move-object/from16 v26, v4

    const/4 v4, 0x4

    invoke-static {v10, v13, v8, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 132
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move v13, v7

    goto :goto_1b

    :cond_3b
    move-object/from16 v26, v4

    const v4, 0x616c6163

    if-ne v8, v4, :cond_3c

    add-int/lit8 v6, v25, -0xc

    .line 133
    new-array v3, v6, [B

    add-int/lit8 v4, v12, 0xc

    .line 134
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 135
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v7, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v8, 0x0

    invoke-static {v4, v7, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 137
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/16 v6, 0x9

    .line 138
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 v7, 0x14

    .line 140
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 141
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 143
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 144
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 145
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move v13, v6

    move-object v6, v3

    move v3, v4

    goto :goto_1b

    :cond_3c
    :goto_1a
    move v13, v7

    move-object/from16 v6, v19

    :goto_1b
    move-object/from16 v19, v6

    move v7, v13

    move-object/from16 v13, v24

    move/from16 v10, v25

    move/from16 v24, v11

    goto/16 :goto_20

    :cond_3d
    move/from16 v7, v26

    move-object/from16 v26, v4

    const/4 v4, 0x0

    const v6, 0x65736473

    :goto_1c
    if-ne v8, v6, :cond_3e

    const/4 v4, -0x1

    move v6, v12

    move-object/from16 v13, v24

    move/from16 v10, v25

    move/from16 v24, v11

    goto :goto_1f

    .line 146
    :cond_3e
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v8, 0x0

    if-lt v6, v12, :cond_3f

    const/4 v10, 0x1

    goto :goto_1d

    :cond_3f
    move v10, v4

    .line 147
    :goto_1d
    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_1e
    sub-int v8, v6, v12

    move/from16 v10, v25

    if-ge v8, v10, :cond_42

    .line 148
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-lez v8, :cond_40

    const/4 v4, 0x1

    :cond_40
    move-object/from16 v13, v24

    .line 150
    invoke-static {v4, v13}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    move/from16 v24, v11

    const v11, 0x65736473

    if-ne v4, v11, :cond_41

    const/4 v4, -0x1

    goto :goto_1f

    :cond_41
    add-int/2addr v6, v8

    const/4 v4, 0x0

    move/from16 v25, v10

    move/from16 v11, v24

    move-object/from16 v24, v13

    goto :goto_1e

    :cond_42
    move-object/from16 v13, v24

    move/from16 v24, v11

    const/4 v4, -0x1

    const/4 v6, -0x1

    :goto_1f
    if-eq v6, v4, :cond_45

    .line 152
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v4

    .line 153
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 154
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    if-eqz v4, :cond_44

    const-string v8, "audio/mp4a-latm"

    .line 155
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 156
    invoke-static {v4}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v3

    .line 157
    iget v7, v3, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 158
    iget v8, v3, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 159
    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v21, v3

    move v3, v8

    .line 160
    :cond_43
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object/from16 v19, v4

    :cond_44
    move-object v9, v6

    :cond_45
    :goto_20
    add-int/2addr v12, v10

    move-object v10, v13

    move/from16 v8, v23

    move/from16 v11, v24

    move-object/from16 v4, v26

    move v13, v7

    move/from16 v7, v22

    goto/16 :goto_13

    :cond_46
    move/from16 v22, v7

    move/from16 v23, v8

    move v7, v13

    .line 161
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_47

    if-eqz v9, :cond_47

    .line 162
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 163
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 164
    iput-object v9, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v6, v21

    .line 165
    iput-object v6, v4, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 166
    iput v3, v4, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 167
    iput v7, v4, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    move/from16 v9, v20

    .line 168
    iput v9, v4, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    move-object/from16 v12, v19

    .line 169
    iput-object v12, v4, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 170
    iput-object v15, v4, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 171
    iput-object v2, v4, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 172
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_47
    :goto_21
    move/from16 v4, p2

    move-object v3, v5

    move/from16 v30, v22

    move/from16 v31, v23

    goto/16 :goto_45

    :cond_48
    :goto_22
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object v3, v10

    add-int/lit8 v7, v22, 0x8

    add-int/lit8 v7, v7, 0x8

    .line 173
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v4, 0x10

    .line 174
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 177
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 178
    iget v7, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ne v9, v14, :cond_4b

    move/from16 v8, v22

    move/from16 v10, v23

    .line 179
    invoke-static {v0, v8, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_4a

    .line 180
    iget-object v9, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v12, p4

    if-nez v12, :cond_49

    const/4 v14, 0x0

    goto :goto_23

    .line 181
    :cond_49
    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v14

    .line 182
    :goto_23
    iget-object v15, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v11, v15, v17

    goto :goto_24

    :cond_4a
    move-object/from16 v12, p4

    move-object v14, v12

    .line 183
    :goto_24
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_25

    :cond_4b
    move-object/from16 v12, p4

    move/from16 v8, v22

    move/from16 v10, v23

    move-object v14, v12

    :goto_25
    const-string/jumbo v11, "video/3gpp"

    if-ne v9, v13, :cond_4c

    const-string/jumbo v13, "video/mpeg"

    goto :goto_26

    :cond_4c
    const v13, 0x48323633

    if-ne v9, v13, :cond_4d

    move-object v13, v11

    goto :goto_26

    :cond_4d
    const/4 v13, 0x0

    :goto_26
    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v2, v18

    move/from16 v12, v20

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v24

    move-object/from16 v20, v26

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v14

    :goto_27
    sub-int v14, v7, v8

    if-ge v14, v10, :cond_75

    .line 184
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 185
    iget v14, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move/from16 v22, v12

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    move-object/from16 v23, v2

    if-nez v12, :cond_4e

    .line 187
    iget v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v8

    if-ne v2, v10, :cond_4e

    move/from16 v39, v4

    move-object/from16 v32, v5

    move/from16 v34, v6

    move/from16 v30, v8

    move/from16 v31, v10

    goto/16 :goto_43

    :cond_4e
    if-lez v12, :cond_4f

    const/4 v2, 0x1

    goto :goto_28

    :cond_4f
    const/4 v2, 0x0

    .line 188
    :goto_28
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    move-object/from16 v24, v3

    const v3, 0x61766343

    if-ne v2, v3, :cond_52

    if-nez v13, :cond_50

    const/4 v2, 0x1

    goto :goto_29

    :cond_50
    const/4 v2, 0x0

    :goto_29
    const/4 v3, 0x0

    .line 190
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v14, v14, 0x8

    .line 191
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 192
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v2

    .line 193
    iget-object v3, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 194
    iget v11, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v11, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v25, :cond_51

    .line 195
    iget v15, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 196
    :cond_51
    iget-object v2, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v11, "video/avc"

    goto :goto_2b

    :cond_52
    const v3, 0x68766343

    if-ne v2, v3, :cond_55

    if-nez v13, :cond_53

    const/4 v2, 0x1

    goto :goto_2a

    :cond_53
    const/4 v2, 0x0

    :goto_2a
    const/4 v3, 0x0

    .line 197
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v14, v14, 0x8

    .line 198
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 199
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v2

    .line 200
    iget-object v3, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 201
    iget v11, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v11, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v25, :cond_54

    .line 202
    iget v15, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 203
    :cond_54
    iget-object v2, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v11, "video/hevc"

    :goto_2b
    move-object v14, v3

    move-object v13, v11

    move-object v11, v2

    goto :goto_30

    :cond_55
    const v3, 0x64766343

    if-eq v2, v3, :cond_73

    const v3, 0x64767643

    if-ne v2, v3, :cond_56

    goto/16 :goto_3e

    :cond_56
    const v3, 0x76706343

    if-ne v2, v3, :cond_59

    if-nez v13, :cond_57

    const/4 v2, 0x1

    goto :goto_2c

    :cond_57
    const/4 v2, 0x0

    :goto_2c
    const/4 v3, 0x0

    .line 204
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v2, 0x76703038

    if-ne v9, v2, :cond_58

    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    goto :goto_2d

    :cond_58
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    :goto_2d
    move-object v13, v2

    goto :goto_2f

    :cond_59
    const v3, 0x61763143

    if-ne v2, v3, :cond_5b

    if-nez v13, :cond_5a

    const/4 v2, 0x1

    goto :goto_2e

    :cond_5a
    const/4 v2, 0x0

    :goto_2e
    const/4 v3, 0x0

    .line 205
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const-string/jumbo v13, "video/av01"

    goto :goto_2f

    :cond_5b
    const v3, 0x636c6c69

    const/16 v26, 0x19

    if-ne v2, v3, :cond_5d

    if-nez v21, :cond_5c

    .line 206
    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    :cond_5c
    move-object/from16 v2, v21

    const/16 v3, 0x15

    .line 207
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v2

    :goto_2f
    move-object/from16 v14, v20

    :goto_30
    move/from16 v39, v4

    move-object/from16 v32, v5

    move/from16 v34, v6

    move/from16 v30, v8

    move/from16 v26, v9

    move/from16 v31, v10

    goto/16 :goto_31

    :cond_5d
    const v3, 0x6d646376

    if-ne v2, v3, :cond_5f

    if-nez v21, :cond_5e

    .line 210
    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    :cond_5e
    move-object/from16 v2, v21

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v14

    move/from16 v26, v9

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v9

    move/from16 v30, v8

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v8

    move/from16 v31, v10

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    move-object/from16 v32, v5

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v5

    move/from16 v33, v15

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v15

    move/from16 v34, v6

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v35

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v37

    move/from16 v39, v4

    const/4 v4, 0x1

    .line 221
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    .line 230
    div-long v5, v35, v3

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 231
    div-long v3, v37, v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v2

    move-object/from16 v14, v20

    move/from16 v15, v33

    :goto_31
    move-object/from16 v20, v14

    :goto_32
    move-object/from16 v2, v23

    goto/16 :goto_42

    :cond_5f
    move/from16 v39, v4

    move-object/from16 v32, v5

    move/from16 v34, v6

    move/from16 v30, v8

    move/from16 v26, v9

    move/from16 v31, v10

    move/from16 v33, v15

    const v3, 0x64323633

    if-ne v2, v3, :cond_61

    const/4 v2, 0x0

    if-nez v13, :cond_60

    const/4 v3, 0x1

    goto :goto_33

    :cond_60
    const/4 v3, 0x0

    .line 232
    :goto_33
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v13, v18

    goto/16 :goto_3f

    :cond_61
    const/4 v3, 0x0

    const v4, 0x65736473

    if-ne v2, v4, :cond_63

    if-nez v13, :cond_62

    const/4 v2, 0x1

    goto :goto_34

    :cond_62
    const/4 v2, 0x0

    .line 233
    :goto_34
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 234
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v2

    .line 235
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .line 236
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_74

    .line 237
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    goto/16 :goto_40

    :cond_63
    const v4, 0x70617370

    if-ne v2, v4, :cond_64

    add-int/lit8 v14, v14, 0x8

    .line 238
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x1

    move v15, v2

    move/from16 v25, v3

    goto :goto_32

    :cond_64
    const v4, 0x73763364

    if-ne v2, v4, :cond_67

    add-int/lit8 v2, v14, 0x8

    :goto_35
    sub-int v4, v2, v14

    if-ge v4, v12, :cond_66

    .line 241
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x70726f6a

    if-ne v5, v6, :cond_65

    .line 244
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v4, v2

    .line 245
    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    goto :goto_36

    :cond_65
    add-int/2addr v2, v4

    goto :goto_35

    :cond_66
    move-object v2, v3

    :goto_36
    move-object/from16 v14, v20

    goto/16 :goto_41

    :cond_67
    const v3, 0x73743364

    if-ne v2, v3, :cond_6b

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x3

    .line 247
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v2, :cond_71

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_6a

    if-eq v2, v4, :cond_69

    const/4 v4, 0x2

    if-eq v2, v4, :cond_68

    if-eq v2, v3, :cond_72

    goto/16 :goto_3c

    :cond_68
    const/4 v2, 0x2

    goto :goto_37

    :cond_69
    move v3, v4

    goto/16 :goto_3d

    :cond_6a
    const/4 v2, 0x0

    :goto_37
    move/from16 v22, v2

    goto/16 :goto_3f

    :cond_6b
    const/4 v3, 0x1

    const v4, 0x636f6c72

    if-ne v2, v4, :cond_71

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v4, 0x6e636c78

    if-eq v2, v4, :cond_6e

    const v4, 0x6e636c63

    if-ne v2, v4, :cond_6c

    goto :goto_39

    :cond_6c
    const-string v3, "Unsupported color type: "

    .line 250
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6d

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    :cond_6d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_38
    const-string v3, "AtomParsers"

    .line 251
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 252
    :cond_6e
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x2

    .line 254
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/16 v6, 0x13

    if-ne v12, v6, :cond_6f

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_6f

    move v6, v3

    goto :goto_3a

    :cond_6f
    const/4 v6, 0x0

    .line 256
    :goto_3a
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v29

    if-eqz v6, :cond_70

    move/from16 v28, v3

    goto :goto_3b

    :cond_70
    move/from16 v28, v5

    .line 257
    :goto_3b
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v27

    goto :goto_3f

    :cond_71
    :goto_3c
    move/from16 v3, v22

    :cond_72
    :goto_3d
    move/from16 v22, v3

    goto :goto_3f

    :cond_73
    :goto_3e
    move/from16 v39, v4

    move-object/from16 v32, v5

    move/from16 v34, v6

    move/from16 v30, v8

    move/from16 v26, v9

    move/from16 v31, v10

    move/from16 v33, v15

    .line 258
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/internal/ArrayQueue;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lkotlinx/coroutines/internal/ArrayQueue;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 259
    iget-object v2, v2, Lkotlinx/coroutines/internal/ArrayQueue;->elements:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v13, "video/dolby-vision"

    :cond_74
    :goto_3f
    move-object/from16 v14, v20

    :goto_40
    move-object/from16 v2, v23

    :goto_41
    move-object/from16 v20, v14

    move/from16 v15, v33

    :goto_42
    add-int/2addr v7, v12

    move/from16 v12, v22

    move-object/from16 v3, v24

    move/from16 v9, v26

    move/from16 v8, v30

    move/from16 v10, v31

    move-object/from16 v5, v32

    move/from16 v6, v34

    move/from16 v4, v39

    goto/16 :goto_27

    :cond_75
    move-object/from16 v23, v2

    move/from16 v39, v4

    move-object/from16 v32, v5

    move/from16 v34, v6

    move/from16 v30, v8

    move/from16 v31, v10

    move/from16 v22, v12

    :goto_43
    move/from16 v33, v15

    const/4 v2, 0x0

    if-nez v13, :cond_76

    move/from16 v4, p2

    move-object/from16 v3, v32

    goto :goto_45

    .line 260
    :cond_76
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 261
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 262
    iput-object v13, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 263
    iput-object v11, v3, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    move/from16 v4, v39

    .line 264
    iput v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    move/from16 v4, v34

    .line 265
    iput v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    move/from16 v15, v33

    .line 266
    iput v15, v3, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    move/from16 v4, p2

    .line 267
    iput v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    move-object/from16 v5, v23

    .line 268
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    move/from16 v5, v22

    .line 269
    iput v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    move-object/from16 v5, v20

    .line 270
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    move-object/from16 v12, v19

    .line 271
    iput-object v12, v3, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v5, -0x1

    move/from16 v6, v29

    if-ne v6, v5, :cond_77

    move/from16 v7, v28

    move/from16 v8, v27

    if-ne v7, v5, :cond_78

    if-ne v8, v5, :cond_78

    if-eqz v21, :cond_7a

    goto :goto_44

    :cond_77
    move/from16 v8, v27

    move/from16 v7, v28

    .line 272
    :cond_78
    :goto_44
    new-instance v5, Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v21, :cond_79

    .line 273
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    :cond_79
    invoke-direct {v5, v6, v7, v8, v2}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 274
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 275
    :cond_7a
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v3, v32

    iput-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_45
    add-int v7, v30, v31

    .line 276
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v2, p3

    move-object v5, v3

    move/from16 v4, v16

    move-object/from16 v3, p4

    goto/16 :goto_0

    :cond_7b
    move-object v3, v5

    return-object v3
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 4
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v6, 0x7472616b

    if-eq v5, v6, :cond_0

    move-object v1, v2

    move/from16 v27, v3

    goto/16 :goto_47

    :cond_0
    const v5, 0x6d766864

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x6d646961

    .line 7
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v8, 0x10

    .line 12
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v9, 0x736f756e

    const/4 v10, -0x1

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v13, v7

    goto :goto_3

    :cond_1
    const v9, 0x76696465

    if-ne v7, v9, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const v9, 0x74657874

    if-eq v7, v9, :cond_5

    const v9, 0x7362746c

    if-eq v7, v9, :cond_5

    const v9, 0x73756274

    if-eq v7, v9, :cond_5

    const v9, 0x636c6370

    if-ne v7, v9, :cond_3

    goto :goto_2

    :cond_3
    const v9, 0x6d657461

    if-ne v7, v9, :cond_4

    const/4 v7, 0x5

    goto :goto_1

    :cond_4
    move v13, v10

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x3

    goto :goto_1

    :goto_3
    const/4 v7, 0x4

    if-ne v13, v10, :cond_6

    move-object/from16 v26, v2

    move/from16 v27, v3

    goto/16 :goto_15

    :cond_6
    const v9, 0x746b6864

    .line 14
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 15
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v11, 0x8

    .line 17
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_7

    move v8, v11

    .line 19
    :cond_7
    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 20
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 21
    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    iget v7, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-nez v12, :cond_8

    const/4 v11, 0x4

    goto :goto_4

    :cond_8
    const/16 v11, 0x8

    :goto_4
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_a

    .line 23
    iget-object v15, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v16, v7, v14

    .line 24
    aget-byte v15, v15, v16

    if-eq v15, v10, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_b

    .line 25
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    :cond_b
    if-nez v12, :cond_c

    .line 26
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_7

    :cond_c
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_7
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-nez v7, :cond_d

    :goto_8
    const/16 v7, 0x10

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9

    :cond_d
    const/16 v7, 0x10

    .line 27
    :goto_9
    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 28
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 29
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    const/4 v14, 0x4

    .line 30
    invoke-virtual {v9, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 31
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 32
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const/high16 v15, 0x10000

    const/high16 v0, -0x10000

    if-nez v7, :cond_e

    if-ne v12, v15, :cond_e

    if-ne v14, v0, :cond_e

    if-nez v9, :cond_e

    const/16 v0, 0x5a

    goto :goto_a

    :cond_e
    if-nez v7, :cond_f

    if-ne v12, v0, :cond_f

    if-ne v14, v15, :cond_f

    if-nez v9, :cond_f

    const/16 v0, 0x10e

    goto :goto_a

    :cond_f
    if-ne v7, v0, :cond_10

    if-nez v12, :cond_10

    if-nez v14, :cond_10

    if-ne v9, v0, :cond_10

    const/16 v0, 0xb4

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    move/from16 v16, v0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v14

    if-nez v0, :cond_11

    move-wide/from16 v17, v10

    goto :goto_b

    :cond_11
    move-wide/from16 v17, p2

    .line 33
    :goto_b
    iget-object v0, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0x8

    .line 34
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_12

    const/16 v5, 0x8

    goto :goto_c

    :cond_12
    const/16 v5, 0x10

    .line 36
    :goto_c
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v17, v11

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v9

    .line 38
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    :goto_d
    move-wide/from16 v20, v11

    const v0, 0x6d696e66

    .line 39
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7374626c

    .line 41
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x6d646864

    .line 43
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 44
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0x8

    .line 46
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 47
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_14

    const/16 v7, 0x8

    goto :goto_e

    :cond_14
    const/16 v7, 0x10

    .line 48
    :goto_e
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    if-nez v6, :cond_15

    const/4 v6, 0x4

    goto :goto_f

    :cond_15
    const/16 v6, 0x8

    .line 50
    :goto_f
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 51
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    shr-int/lit8 v6, v5, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    shr-int/lit8 v7, v5, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    .line 52
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const v6, 0x73747364

    .line 54
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 57
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move v15, v8

    move-object/from16 v18, p4

    move/from16 v19, p6

    .line 58
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v0

    if-nez p5, :cond_1b

    const v6, 0x65647473

    .line 59
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    if-eqz v6, :cond_1b

    const v7, 0x656c7374

    .line 60
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    if-nez v6, :cond_16

    const/4 v6, 0x0

    move-object/from16 v26, v2

    move/from16 v27, v3

    goto :goto_13

    .line 61
    :cond_16
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x8

    .line 62
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 63
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 64
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 65
    new-array v12, v11, [J

    .line 66
    new-array v14, v11, [J

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v11, :cond_1a

    move/from16 v16, v11

    const/4 v11, 0x1

    if-ne v7, v11, :cond_17

    .line 67
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v17

    goto :goto_11

    :cond_17
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v17

    :goto_11
    aput-wide v17, v12, v15

    if-ne v7, v11, :cond_18

    .line 68
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v17

    move-object/from16 v26, v2

    move/from16 v27, v3

    goto :goto_12

    :cond_18
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    move-object/from16 v26, v2

    move/from16 v27, v3

    int-to-long v2, v11

    move-wide/from16 v17, v2

    :goto_12
    aput-wide v17, v14, v15

    .line 69
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    const/4 v2, 0x2

    .line 70
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v16

    move-object/from16 v2, v26

    move/from16 v3, v27

    goto :goto_10

    .line 71
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v26, v2

    move/from16 v27, v3

    .line 72
    invoke-static {v12, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_13
    if-eqz v6, :cond_1c

    .line 73
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 74
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [J

    goto :goto_14

    :cond_1b
    move-object/from16 v26, v2

    move/from16 v27, v3

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 75
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_1d

    :goto_15
    const/4 v0, 0x0

    :goto_16
    move-object/from16 v2, p7

    goto :goto_17

    .line 76
    :cond_1d
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 77
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v11, v2

    move v12, v8

    move-wide/from16 v16, v9

    move-wide/from16 v18, v20

    move-object/from16 v20, v3

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v0

    invoke-direct/range {v11 .. v25}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object v0, v2

    goto :goto_16

    .line 79
    :goto_17
    invoke-interface {v2, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-nez v6, :cond_1e

    move-object/from16 v1, v26

    goto/16 :goto_47

    :cond_1e
    const v0, 0x6d646961

    .line 80
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d696e66

    .line 82
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    .line 84
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374737a

    .line 86
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 87
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_18

    :cond_1f
    const v3, 0x73747a32

    .line 88
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 89
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 90
    :goto_18
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    if-nez v3, :cond_20

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    const/4 v3, 0x0

    new-array v7, v3, [J

    new-array v8, v3, [I

    const/4 v9, 0x0

    new-array v10, v3, [J

    new-array v11, v3, [I

    const-wide/16 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_46

    :cond_20
    const v5, 0x7374636f

    .line 92
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-nez v5, :cond_21

    const v5, 0x636f3634

    .line 93
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 94
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_19

    :cond_21
    const/4 v7, 0x0

    .line 95
    :goto_19
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v8, 0x73747363

    .line 96
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 97
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v9, 0x73747473

    .line 99
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 100
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v10, 0x73747373

    .line 102
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 103
    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_1a

    :cond_22
    const/4 v10, 0x0

    :goto_1a
    const v11, 0x63747473

    .line 104
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 105
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_1b

    :cond_23
    const/4 v0, 0x0

    :goto_1b
    const/16 v11, 0xc

    .line 106
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 107
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 108
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 109
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 110
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_24

    goto :goto_1c

    :cond_24
    const/4 v15, 0x0

    :goto_1c
    const-string v14, "first_chunk must be 1"

    invoke-static {v15, v14}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 111
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .line 113
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    .line 114
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v0, :cond_25

    .line 115
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 116
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    goto :goto_1d

    :cond_25
    const/16 v16, 0x0

    :goto_1d
    if-eqz v10, :cond_27

    .line 117
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 118
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    if-lez v11, :cond_26

    .line 119
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_1e

    :cond_26
    const/4 v10, -0x1

    const/16 v17, 0x0

    move-object/from16 v40, v17

    move/from16 v17, v10

    move-object/from16 v10, v40

    goto :goto_1e

    :cond_27
    const/4 v11, -0x1

    const/16 v17, 0x0

    move/from16 v40, v17

    move/from16 v17, v11

    move/from16 v11, v40

    :goto_1e
    move/from16 v18, v13

    .line 120
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v13

    move/from16 v19, v15

    .line 121
    iget-object v15, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v15, v15, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, -0x1

    if-eq v13, v1, :cond_29

    const-string v1, "audio/raw"

    .line 122
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "audio/g711-mlaw"

    .line 123
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "audio/g711-alaw"

    .line 124
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    if-nez v14, :cond_29

    if-nez v16, :cond_29

    if-nez v11, :cond_29

    const/4 v1, 0x1

    goto :goto_1f

    :cond_29
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_32

    .line 125
    new-array v0, v12, [J

    .line 126
    new-array v1, v12, [I

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    const/4 v14, 0x0

    :goto_20
    add-int/lit8 v11, v11, 0x1

    if-ne v11, v12, :cond_2a

    const/4 v15, 0x0

    goto :goto_23

    :cond_2a
    if-eqz v7, :cond_2b

    .line 127
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_21

    .line 128
    :cond_2b
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_21
    if-ne v11, v4, :cond_2d

    .line 129
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    const/4 v4, 0x4

    .line 130
    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v18, v18, -0x1

    if-lez v18, :cond_2c

    .line 131
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_2c
    const/4 v4, -0x1

    :cond_2d
    :goto_22
    const/4 v15, 0x1

    :goto_23
    if-eqz v15, :cond_2e

    .line 132
    aput-wide v9, v0, v11

    .line 133
    aput v14, v1, v11

    goto :goto_20

    :cond_2e
    int-to-long v4, v2

    const/16 v2, 0x2000

    .line 134
    div-int/2addr v2, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_24
    if-ge v7, v12, :cond_2f

    .line 135
    aget v9, v1, v7

    .line 136
    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 137
    :cond_2f
    new-array v7, v8, [J

    .line 138
    new-array v9, v8, [I

    .line 139
    new-array v10, v8, [J

    .line 140
    new-array v8, v8, [I

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_25
    if-ge v11, v12, :cond_31

    .line 141
    aget v17, v1, v11

    .line 142
    aget-wide v18, v0, v11

    move-wide/from16 v20, v18

    move-object/from16 v19, v1

    move/from16 v1, v17

    move-object/from16 v17, v0

    move/from16 v0, v16

    :goto_26
    if-lez v1, :cond_30

    .line 143
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 144
    aput-wide v20, v7, v15

    mul-int v18, v13, v16

    .line 145
    aput v18, v9, v15

    move/from16 v18, v2

    .line 146
    aget v2, v9, v15

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v22, v6

    move-object v2, v7

    int-to-long v6, v14

    mul-long/2addr v6, v4

    .line 147
    aput-wide v6, v10, v15

    const/4 v6, 0x1

    .line 148
    aput v6, v8, v15

    .line 149
    aget v6, v9, v15

    int-to-long v6, v6

    add-long v20, v20, v6

    add-int v14, v14, v16

    sub-int v1, v1, v16

    add-int/lit8 v15, v15, 0x1

    move-object v7, v2

    move/from16 v2, v18

    move-object/from16 v6, v22

    goto :goto_26

    :cond_30
    move/from16 v18, v2

    move-object/from16 v22, v6

    move-object v2, v7

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v0

    move-object/from16 v0, v17

    move/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_25

    :cond_31
    move-object/from16 v22, v6

    move-object v2, v7

    int-to-long v0, v14

    mul-long/2addr v4, v0

    move-object v15, v8

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v8, v22

    goto/16 :goto_34

    :cond_32
    move-object/from16 v22, v6

    .line 150
    new-array v1, v3, [J

    .line 151
    new-array v6, v3, [I

    .line 152
    new-array v13, v3, [J

    .line 153
    new-array v15, v3, [I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    move/from16 v37, v32

    move/from16 v38, v33

    move/from16 v33, v2

    move/from16 v32, v19

    move/from16 v2, v35

    move/from16 v19, v14

    move/from16 v14, v17

    move/from16 v17, v16

    move-object/from16 v16, v9

    move/from16 v9, v34

    move/from16 v34, v11

    :goto_27
    const-string v11, "AtomParsers"

    if-ge v2, v3, :cond_40

    const/16 v35, 0x1

    move/from16 v40, v20

    move/from16 v20, v3

    move/from16 v3, v40

    :goto_28
    if-nez v21, :cond_37

    move/from16 v39, v14

    add-int/lit8 v14, v36, 0x1

    if-ne v14, v12, :cond_33

    const/16 v35, 0x0

    goto :goto_2b

    :cond_33
    if-eqz v7, :cond_34

    .line 154
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v30

    goto :goto_29

    .line 155
    :cond_34
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v30

    :goto_29
    if-ne v14, v3, :cond_36

    .line 156
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    const/4 v3, 0x4

    .line 157
    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v18, v18, -0x1

    if-lez v18, :cond_35

    .line 158
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    :cond_35
    const/4 v3, -0x1

    :cond_36
    :goto_2a
    const/16 v35, 0x1

    :goto_2b
    move/from16 v36, v14

    if-eqz v35, :cond_38

    move/from16 v21, v23

    move-wide/from16 v28, v30

    move/from16 v14, v39

    goto :goto_28

    :cond_37
    move/from16 v39, v14

    :cond_38
    if-nez v35, :cond_39

    const-string v3, "Unexpected end of chunk data"

    .line 159
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 161
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 162
    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v13

    .line 163
    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    move v3, v2

    goto/16 :goto_2e

    :cond_39
    if-eqz v0, :cond_3b

    :goto_2c
    if-nez v38, :cond_3a

    if-lez v17, :cond_3a

    .line 164
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v38

    .line 165
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v37

    add-int/lit8 v17, v17, -0x1

    goto :goto_2c

    :cond_3a
    add-int/lit8 v38, v38, -0x1

    :cond_3b
    move/from16 v11, v37

    .line 166
    aput-wide v28, v1, v2

    .line 167
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v14

    aput v14, v6, v2

    .line 168
    aget v14, v6, v2

    if-le v14, v9, :cond_3c

    .line 169
    aget v9, v6, v2

    :cond_3c
    move/from16 v35, v3

    move-object v14, v4

    int-to-long v3, v11

    add-long v3, v24, v3

    .line 170
    aput-wide v3, v13, v2

    if-nez v10, :cond_3d

    const/4 v3, 0x1

    goto :goto_2d

    :cond_3d
    const/4 v3, 0x0

    .line 171
    :goto_2d
    aput v3, v15, v2

    move/from16 v3, v39

    if-ne v2, v3, :cond_3e

    const/4 v4, 0x1

    .line 172
    aput v4, v15, v2

    add-int/lit8 v34, v34, -0x1

    if-lez v34, :cond_3e

    .line 173
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    sub-int/2addr v3, v4

    :cond_3e
    move-object/from16 v39, v8

    move/from16 v4, v33

    move/from16 v33, v7

    int-to-long v7, v4

    add-long v24, v24, v7

    add-int/lit8 v32, v32, -0x1

    if-nez v32, :cond_3f

    if-lez v19, :cond_3f

    .line 175
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 176
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v19, v19, -0x1

    move/from16 v32, v4

    move v4, v7

    .line 177
    :cond_3f
    aget v7, v6, v2

    int-to-long v7, v7

    add-long v28, v28, v7

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v37, v11

    move/from16 v7, v33

    move-object/from16 v8, v39

    move/from16 v33, v4

    move-object v4, v14

    move v14, v3

    move/from16 v3, v20

    move/from16 v20, v35

    goto/16 :goto_27

    :cond_40
    move/from16 v20, v3

    :goto_2e
    move/from16 v2, v21

    move/from16 v4, v37

    int-to-long v4, v4

    add-long v4, v24, v4

    if-eqz v0, :cond_42

    :goto_2f
    if-lez v17, :cond_42

    .line 178
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-eqz v7, :cond_41

    const/4 v0, 0x0

    goto :goto_30

    .line 179
    :cond_41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v17, v17, -0x1

    goto :goto_2f

    :cond_42
    const/4 v0, 0x1

    :goto_30
    if-nez v34, :cond_44

    if-nez v32, :cond_44

    if-nez v2, :cond_44

    if-nez v19, :cond_44

    move/from16 v7, v38

    if-nez v7, :cond_45

    if-nez v0, :cond_43

    goto :goto_31

    :cond_43
    move-object/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v8, v22

    goto :goto_33

    :cond_44
    move/from16 v7, v38

    :cond_45
    :goto_31
    move-object/from16 v8, v22

    .line 180
    iget v10, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    if-nez v0, :cond_46

    const-string v0, ", ctts invalid"

    goto :goto_32

    :cond_46
    const-string v0, ""

    .line 181
    :goto_32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0x106

    const-string v14, "Inconsistent stbl box for track "

    move-object/from16 v16, v1

    const-string v1, ": remainingSynchronizationSamples "

    move/from16 v17, v3

    move/from16 v3, v34

    invoke-static {v12, v14, v10, v1, v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException$$ExternalSyntheticOutline0;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v32

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v19

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    move-object v0, v6

    move-object v1, v13

    move-object/from16 v7, v16

    move/from16 v3, v17

    move/from16 v16, v9

    .line 183
    :goto_34
    iget-wide v13, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v11, 0xf4240

    move-wide v9, v4

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 184
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v9, 0xf4240

    if-nez v2, :cond_47

    .line 185
    iget-wide v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v1, v9, v10, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 186
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v5, v2

    move-object v6, v8

    move-object v8, v0

    move/from16 v9, v16

    move-object v10, v1

    move-object v11, v15

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v3, p1

    :goto_35
    move-object v0, v2

    goto/16 :goto_46

    .line 187
    :cond_47
    array-length v2, v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4b

    iget v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v2, v6, :cond_4b

    array-length v2, v1

    const/4 v6, 0x2

    if-lt v2, v6, :cond_4b

    .line 188
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 189
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 190
    aget-wide v9, v2, v6

    .line 191
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v17, v2, v6

    iget-wide v11, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v13, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v19, v11

    move-wide/from16 v21, v13

    .line 192
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    add-long/2addr v11, v9

    .line 193
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v13, 0x4

    .line 194
    invoke-static {v13, v6, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v14

    move/from16 v17, v3

    .line 195
    array-length v3, v1

    sub-int/2addr v3, v13

    .line 196
    invoke-static {v3, v6, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 197
    aget-wide v18, v1, v6

    cmp-long v3, v18, v9

    if-gtz v3, :cond_48

    aget-wide v13, v1, v14

    cmp-long v3, v9, v13

    if-gez v3, :cond_48

    aget-wide v2, v1, v2

    cmp-long v2, v2, v11

    if-gez v2, :cond_48

    cmp-long v2, v11, v4

    if-gtz v2, :cond_48

    const/4 v2, 0x1

    goto :goto_36

    :cond_48
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_4a

    sub-long v18, v4, v11

    const/4 v2, 0x0

    .line 198
    aget-wide v2, v1, v2

    sub-long v20, v9, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v2, v2

    iget-wide v9, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v22, v2

    move-wide/from16 v24, v9

    .line 199
    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 200
    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v9, v6

    iget-wide v11, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    .line 201
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v2, v11

    if-nez v6, :cond_49

    cmp-long v6, v9, v11

    if-eqz v6, :cond_4a

    :cond_49
    const-wide/32 v11, 0x7fffffff

    cmp-long v6, v2, v11

    if-gtz v6, :cond_4a

    cmp-long v6, v9, v11

    if-gtz v6, :cond_4a

    long-to-int v2, v2

    move-object/from16 v3, p1

    .line 202
    iput v2, v3, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v2, v9

    .line 203
    iput v2, v3, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 204
    iget-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v9, 0xf4240

    invoke-static {v1, v9, v10, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 205
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v4, 0x0

    aget-wide v9, v2, v4

    const-wide/32 v11, 0xf4240

    iget-wide v13, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 206
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 207
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v5, v2

    move-object v6, v8

    move-object v8, v0

    move/from16 v9, v16

    move-object v10, v1

    move-object v11, v15

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_35

    :cond_4a
    :goto_37
    move-object/from16 v3, p1

    goto :goto_38

    :cond_4b
    move/from16 v17, v3

    goto :goto_37

    .line 208
    :goto_38
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v6, v2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_4d

    const/4 v6, 0x0

    aget-wide v9, v2, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4d

    .line 209
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 210
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    aget-wide v9, v2, v6

    const/4 v2, 0x0

    .line 212
    :goto_39
    array-length v6, v1

    if-ge v2, v6, :cond_4c

    .line 213
    aget-wide v11, v1, v2

    sub-long v17, v11, v9

    const-wide/32 v19, 0xf4240

    iget-wide v11, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v11

    .line 214
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    aput-wide v11, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4c
    sub-long v17, v4, v9

    const-wide/32 v19, 0xf4240

    .line 215
    iget-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v4

    .line 216
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 217
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v5, v2

    move-object v6, v8

    move-object v8, v0

    move/from16 v9, v16

    move-object v10, v1

    move-object v11, v15

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_35

    .line 218
    :cond_4d
    iget v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4e

    const/4 v4, 0x1

    goto :goto_3a

    :cond_4e
    const/4 v4, 0x0

    .line 219
    :goto_3a
    array-length v5, v2

    new-array v5, v5, [I

    .line 220
    array-length v2, v2

    new-array v2, v2, [I

    .line 221
    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 222
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 223
    :goto_3b
    iget-object v13, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v14, v13

    if-ge v9, v14, :cond_52

    move v14, v10

    move/from16 v18, v11

    .line 224
    aget-wide v10, v6, v9

    const-wide/16 v19, -0x1

    cmp-long v19, v10, v19

    if-eqz v19, :cond_51

    .line 225
    aget-wide v20, v13, v9

    move-object/from16 v19, v6

    move-object v13, v7

    iget-wide v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v29, v13

    move/from16 v28, v14

    iget-wide v13, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v22, v6

    move-wide/from16 v24, v13

    .line 226
    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    const/4 v13, 0x1

    .line 227
    invoke-static {v1, v10, v11, v13, v13}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v14

    aput v14, v5, v9

    add-long/2addr v10, v6

    const/4 v6, 0x0

    .line 228
    invoke-static {v1, v10, v11, v4, v6}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v7

    aput v7, v2, v9

    .line 229
    :goto_3c
    aget v7, v5, v9

    aget v10, v2, v9

    if-ge v7, v10, :cond_4f

    aget v7, v5, v9

    aget v7, v15, v7

    and-int/2addr v7, v13

    if-nez v7, :cond_4f

    .line 230
    aget v7, v5, v9

    add-int/2addr v7, v13

    aput v7, v5, v9

    goto :goto_3c

    .line 231
    :cond_4f
    aget v7, v2, v9

    aget v10, v5, v9

    sub-int/2addr v7, v10

    add-int v7, v7, v18

    .line 232
    aget v10, v5, v9

    if-eq v12, v10, :cond_50

    goto :goto_3d

    :cond_50
    move v13, v6

    :goto_3d
    or-int v6, v28, v13

    .line 233
    aget v10, v2, v9

    move v11, v7

    move v12, v10

    move v10, v6

    goto :goto_3e

    :cond_51
    move-object/from16 v19, v6

    move-object/from16 v29, v7

    move/from16 v28, v14

    move/from16 v11, v18

    move/from16 v10, v28

    :goto_3e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v19

    move-object/from16 v7, v29

    goto :goto_3b

    :cond_52
    move-object/from16 v29, v7

    move/from16 v28, v10

    move/from16 v18, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    move/from16 v7, v17

    if-eq v11, v7, :cond_53

    goto :goto_3f

    :cond_53
    move v6, v4

    :goto_3f
    or-int v6, v28, v6

    if-eqz v6, :cond_54

    .line 234
    new-array v7, v11, [J

    goto :goto_40

    :cond_54
    move-object/from16 v7, v29

    :goto_40
    if-eqz v6, :cond_55

    .line 235
    new-array v9, v11, [I

    goto :goto_41

    :cond_55
    move-object v9, v0

    :goto_41
    if-eqz v6, :cond_56

    move/from16 v16, v4

    :cond_56
    if-eqz v6, :cond_57

    .line 236
    new-array v10, v11, [I

    move-object v12, v10

    goto :goto_42

    :cond_57
    move-object v12, v15

    .line 237
    :goto_42
    new-array v10, v11, [J

    const-wide/16 v13, 0x0

    move v11, v4

    .line 238
    :goto_43
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    if-ge v4, v3, :cond_5b

    .line 239
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v23, v3, v4

    .line 240
    aget v3, v5, v4

    move-object/from16 v25, v5

    .line 241
    aget v5, v2, v4

    if-eqz v6, :cond_58

    move-object/from16 v28, v2

    sub-int v2, v5, v3

    move/from16 v30, v4

    move-object/from16 v4, v29

    .line 242
    invoke-static {v4, v3, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    invoke-static {v0, v3, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    invoke-static {v15, v3, v12, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    :cond_58
    move-object/from16 v28, v2

    move/from16 v30, v4

    move-object/from16 v4, v29

    :goto_44
    move/from16 v2, v16

    :goto_45
    if-ge v3, v5, :cond_5a

    const-wide/32 v19, 0xf4240

    move-object/from16 v31, v4

    move/from16 v29, v5

    .line 245
    iget-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v17, v13

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 246
    aget-wide v16, v1, v3

    move-object/from16 v32, v12

    move-wide/from16 v18, v13

    sub-long v12, v16, v23

    move-object/from16 v17, v15

    const-wide/16 v14, 0x0

    .line 247
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    const-wide/32 v35, 0xf4240

    iget-wide v12, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v37, v12

    .line 248
    invoke-static/range {v33 .. v38}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 249
    aput-wide v4, v10, v11

    if-eqz v6, :cond_59

    .line 250
    aget v4, v9, v11

    if-le v4, v2, :cond_59

    .line 251
    aget v2, v0, v3

    :cond_59
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, v17

    move-wide/from16 v13, v18

    move/from16 v5, v29

    move-object/from16 v4, v31

    move-object/from16 v12, v32

    goto :goto_45

    :cond_5a
    move-object/from16 v31, v4

    move-object/from16 v32, v12

    move-wide/from16 v18, v13

    move-object/from16 v17, v15

    .line 252
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v3, v30

    add-long v13, v18, v3

    add-int/lit8 v4, v30, 0x1

    move/from16 v16, v2

    move-object/from16 v5, v25

    move-object/from16 v2, v28

    move-object/from16 v29, v31

    goto/16 :goto_43

    :cond_5b
    move-object/from16 v32, v12

    move-wide/from16 v18, v13

    const-wide/32 v0, 0xf4240

    .line 253
    iget-wide v2, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v17, v18

    move-wide/from16 v19, v0

    move-wide/from16 v21, v2

    .line 254
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 255
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v5, v0

    move-object v6, v8

    move-object v8, v9

    move/from16 v9, v16

    move-object/from16 v11, v32

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    :goto_46
    move-object/from16 v1, v26

    .line 256
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_47
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, p0

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_5c
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 257
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_5d
    move-object v1, v2

    return-object v1
.end method
