.class public final Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# direct methods
.method public static parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x64666c38

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 4
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 5
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 6
    :try_start_0
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    return-object v2

    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 8
    throw v1

    :cond_2
    const v4, 0x72617720

    if-eq v3, v4, :cond_3

    return-object v2

    .line 9
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 11
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_1
    if-ge v4, v6, :cond_14

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/2addr v7, v4

    if-le v7, v4, :cond_13

    if-le v7, v6, :cond_4

    goto/16 :goto_d

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v8, 0x6d657368

    if-ne v4, v8, :cond_12

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v8, 0x2710

    if-le v4, v8, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    new-array v8, v4, [F

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v4, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 17
    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    const/16 v11, 0x7d00

    if-le v10, v11, :cond_7

    :goto_3
    move-object v1, v2

    move-object/from16 v20, v3

    move/from16 v22, v5

    move/from16 p0, v6

    goto/16 :goto_b

    :cond_7
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    move/from16 p0, v6

    int-to-double v5, v4

    mul-double/2addr v5, v11

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 21
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 22
    iget-object v15, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 23
    invoke-direct {v6, v15, v9, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BILcom/google/android/material/R$dimen$$IA$1;)V

    .line 24
    iget v15, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/16 v2, 0x8

    mul-int/2addr v15, v2

    .line 25
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    mul-int/lit8 v15, v10, 0x5

    .line 26
    new-array v15, v15, [F

    const/4 v9, 0x5

    new-array v11, v9, [I

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_4
    if-ge v12, v10, :cond_a

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_9

    .line 27
    aget v20, v11, v2

    .line 28
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    shr-int/lit8 v22, v21, 0x1

    const/16 v16, 0x1

    and-int/lit8 v9, v21, 0x1

    move-object/from16 v16, v15

    neg-int v9, v9

    xor-int v9, v9, v22

    add-int v9, v20, v9

    if-ge v9, v4, :cond_b

    if-gez v9, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v20, v19, 0x1

    .line 29
    aget v21, v8, v9

    aput v21, v16, v19

    .line 30
    aput v9, v11, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v16

    move/from16 v19, v20

    const/4 v9, 0x5

    goto :goto_5

    :cond_9
    move-object/from16 v16, v15

    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x8

    const/4 v9, 0x5

    goto :goto_4

    :cond_a
    move-object/from16 v16, v15

    .line 31
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    and-int/lit8 v2, v2, -0x8

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/16 v2, 0x20

    .line 32
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 33
    new-array v5, v4, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_10

    const/16 v9, 0x8

    .line 34
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 35
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 36
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const v2, 0x1f400

    if-le v1, v2, :cond_d

    :cond_b
    :goto_7
    move-object/from16 v20, v3

    :cond_c
    :goto_8
    const/16 v22, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v20, v3

    int-to-double v2, v10

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v17

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v3, v1, 0x3

    .line 38
    new-array v3, v3, [F

    mul-int/lit8 v9, v1, 0x2

    .line 39
    new-array v9, v9, [F

    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_9
    if-ge v15, v1, :cond_f

    .line 40
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v24

    shr-int/lit8 v25, v24, 0x1

    move/from16 v26, v1

    const/16 v22, 0x1

    and-int/lit8 v1, v24, 0x1

    neg-int v1, v1

    xor-int v1, v1, v25

    add-int v1, v23, v1

    if-ltz v1, :cond_c

    if-lt v1, v10, :cond_e

    goto :goto_8

    :cond_e
    mul-int/lit8 v23, v15, 0x3

    mul-int/lit8 v24, v1, 0x5

    .line 41
    aget v25, v16, v24

    aput v25, v3, v23

    add-int/lit8 v25, v23, 0x1

    add-int/lit8 v27, v24, 0x1

    .line 42
    aget v27, v16, v27

    aput v27, v3, v25

    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v25, v24, 0x2

    .line 43
    aget v25, v16, v25

    aput v25, v3, v23

    mul-int/lit8 v23, v15, 0x2

    add-int/lit8 v25, v24, 0x3

    .line 44
    aget v25, v16, v25

    aput v25, v9, v23

    const/16 v22, 0x1

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v24, v24, 0x4

    .line 45
    aget v24, v16, v24

    aput v24, v9, v23

    add-int/lit8 v15, v15, 0x1

    move/from16 v23, v1

    move/from16 v1, v26

    goto :goto_9

    :goto_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_f
    const/16 v22, 0x1

    .line 46
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    invoke-direct {v1, v11, v3, v9, v12}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v1, v5, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v20

    const/4 v1, 0x7

    const/16 v2, 0x20

    goto/16 :goto_6

    :cond_10
    move-object/from16 v20, v3

    const/16 v22, 0x1

    .line 47
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    :goto_b
    if-nez v1, :cond_11

    goto :goto_d

    :cond_11
    move-object/from16 v2, v20

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    move-object v2, v3

    move/from16 v22, v5

    move/from16 p0, v6

    .line 49
    :goto_c
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move/from16 v6, p0

    move-object v3, v2

    move v4, v7

    move/from16 v5, v22

    const/4 v1, 0x7

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_13
    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_14
    move-object v2, v3

    :goto_e
    return-object v2
.end method
