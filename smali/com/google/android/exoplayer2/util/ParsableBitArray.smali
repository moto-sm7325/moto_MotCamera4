.class public final Lcom/google/android/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field public final synthetic $r8$classId:I

.field public bitOffset:I

.field public byteLimit:I

.field public byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 18
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public constructor <init>([BILcom/google/android/material/R$dimen$$IA$1;)V
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 9
    array-length p2, p1

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 12
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 15
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    return-void
.end method


# virtual methods
.method public final assertValidOffset()V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-lt v0, v3, :cond_1

    if-ne v0, v3, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void

    .line 2
    :pswitch_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_2

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v3, :cond_3

    if-ne v0, v3, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void

    .line 3
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_4

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-lt v0, v3, :cond_5

    if-ne v0, v3, :cond_4

    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :cond_5
    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bitsLeft()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public byteAlign()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public canReadBits(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 2
    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    .line 3
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ge v2, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->shouldSkipByte(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 6
    :cond_2
    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-lt v2, p0, :cond_4

    if-ne v2, p0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    .line 5
    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 6
    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 7
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->canReadBits(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v6

    :cond_2
    return v2
.end method

.method public getBytePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    return p0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 2
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public readBit()Z
    .locals 5

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    shr-int/2addr v0, v1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    move v3, v2

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    return v3

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v4

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shr-int/2addr v1, v4

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    return v2

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    aget-byte v0, v0, v4

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    shr-int/2addr v1, v4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readBits(I)I
    .locals 10

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 2
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/2addr v0, v5

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    shr-int/2addr v0, v2

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, v5, v2

    and-int/2addr v0, v2

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v5

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    move v3, v6

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, v4, v1

    and-int/2addr v0, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    return v0

    :pswitch_1
    if-nez p1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    move v0, v3

    .line 7
    :goto_1
    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-le v6, v1, :cond_2

    add-int/lit8 v6, v6, -0x8

    .line 8
    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 9
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/2addr v7, v5

    shl-int v6, v7, v6

    or-int/2addr v0, v6

    goto :goto_1

    .line 10
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/2addr v5, v7

    rsub-int/lit8 v7, v6, 0x8

    shr-int/2addr v5, v7

    or-int/2addr v0, v5

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v0

    if-ne v6, v1, :cond_3

    .line 11
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v8, v2

    .line 12
    iput v8, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    move v3, p1

    :goto_2
    return v3

    .line 14
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    move v0, v3

    .line 15
    :goto_4
    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    const/4 v7, 0x2

    if-le v6, v1, :cond_5

    add-int/lit8 v6, v6, -0x8

    .line 16
    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 17
    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v9, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    shl-int v6, v8, v6

    or-int/2addr v0, v6

    add-int/lit8 v6, v9, 0x1

    .line 18
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->shouldSkipByte(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    move v7, v2

    :goto_5
    add-int/2addr v9, v7

    iput v9, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    goto :goto_4

    .line 19
    :cond_5
    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v9, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    aget-byte v8, v8, v9

    and-int/2addr v5, v8

    rsub-int/lit8 v8, v6, 0x8

    shr-int/2addr v5, v8

    or-int/2addr v0, v5

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v0

    if-ne v6, v1, :cond_7

    .line 20
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    add-int/lit8 v0, v9, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->shouldSkipByte(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v7

    :cond_6
    add-int/2addr v9, v2

    iput v9, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readBits([BII)V
    .locals 7

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 23
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v3, v4

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 24
    aget-byte v4, p1, p2

    aget-byte v3, v3, v5

    and-int/2addr v1, v3

    sub-int/2addr v2, v6

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_1

    return-void

    .line 25
    :cond_1
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 26
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_2

    .line 27
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    .line 28
    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 29
    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 30
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    .line 31
    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_3

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v4, v4, 0x1

    .line 33
    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public readBytes([BII)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public readExpGolombCodeNum()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result p0

    .line 2
    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, v0

    return p0
.end method

.method public reset([BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public shouldSkipByte(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-gt v1, p1, :cond_0

    .line 1
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    aget-byte v1, p0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    sub-int/2addr p1, v0

    aget-byte p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public skipBit()V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ne v0, v3, :cond_0

    .line 2
    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v3, :cond_2

    .line 6
    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->shouldSkipByte(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public skipBits(I)V
    .locals 5

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->$r8$classId:I

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    div-int/lit8 v0, p1, 0x8

    .line 2
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 3
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-le p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 4
    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 p1, p1, -0x8

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void

    .line 7
    :pswitch_1
    div-int/lit8 v0, p1, 0x8

    .line 8
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 9
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-le p1, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 10
    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    .line 11
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void

    .line 13
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 14
    div-int/lit8 v2, p1, 0x8

    add-int v3, v0, v2

    .line 15
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 16
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr p1, v2

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-le p1, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 17
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 p1, p1, -0x8

    .line 18
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 19
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-gt v0, p1, :cond_3

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->shouldSkipByte(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipBytes(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method
