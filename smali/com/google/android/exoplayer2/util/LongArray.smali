.class public Lcom/google/android/exoplayer2/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# instance fields
.field public final synthetic $r8$classId:I

.field public size:I

.field public values:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/material/R$dimen$$IA$1;)V
    .locals 2

    iput p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->$r8$classId:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p1, 0x20

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>(I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object p1, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p2, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    .line 7
    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    .line 8
    :goto_0
    check-cast p2, [C

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    array-length v1, p2

    sub-int/2addr v0, v1

    sput v0, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    .line 9
    :goto_1
    monitor-exit p1

    if-nez v1, :cond_3

    const/16 p1, 0x80

    new-array v1, p1, [C

    .line 10
    :cond_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit p1

    throw p0

    .line 12
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    return-void

    .line 14
    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [J

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 2
    check-cast v1, [J

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->ensureAdditionalCapacity(I)V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v1, [C

    iget v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    iget p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    return-void
.end method

.method public appendStringSlowPath(IILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_4

    :goto_0
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x2

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/LongArray;->ensureTotalCapacity(I)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 4
    sget-object v3, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    .line 5
    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 6
    aget-byte v3, v3, p1

    if-nez v3, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v2, [C

    add-int/lit8 v3, p2, 0x1

    int-to-char p1, p1

    aput-char p1, v2, p2

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8
    sget-object v2, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    .line 9
    aget-object p1, v2, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/LongArray;->ensureTotalCapacity(I)V

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v2, [C

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v2, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    move p2, p1

    goto :goto_2

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast p1, [C

    const/16 v4, 0x5c

    aput-char v4, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-char v3, v3

    .line 15
    aput-char v3, p1, p2

    .line 16
    iput v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    move p2, v2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v2, [C

    add-int/lit8 v3, p2, 0x1

    int-to-char p1, p1

    aput-char p1, v2, p2

    :goto_1
    move p2, v3

    :goto_2
    if-lt v1, v0, :cond_3

    goto :goto_3

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    :goto_3
    add-int/lit8 p1, p2, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/LongArray;->ensureTotalCapacity(I)V

    .line 19
    iget-object p3, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast p3, [C

    const/16 v0, 0x22

    aput-char v0, p3, p2

    .line 20
    iput p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    return-void
.end method

.method public ensureAdditionalCapacity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->ensureTotalCapacity(I)V

    return-void
.end method

.method public ensureTotalCapacity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [C

    array-length v1, v1

    if-gt v1, p1, :cond_1

    .line 2
    check-cast v0, [C

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    mul-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public get(I)J
    .locals 4

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    return-wide p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    const/16 v1, 0x2e

    const-string v2, "Invalid index "

    const-string v3, ", size is "

    invoke-static {v1, v2, p1, v3, p0}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast p0, [C

    const-string v1, "array"

    .line 2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    array-length v2, p0

    add-int/2addr v2, v1

    sget v3, Lkotlinx/serialization/json/internal/CharArrayPool;->MAX_CHARS_IN_POOL:I

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, p0

    add-int/2addr v1, v2

    sput v1, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    .line 6
    sget-object v1, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v0, [C

    iget p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzda;

    .line 1
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;-><init>(ILcom/google/android/gms/internal/mlkit_vision_barcode/zzda;)V

    return-object v0
.end method

.method public zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    iget v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    .line 2
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;-><init>(ILcom/google/android/gms/internal/mlkit_vision_common/zzw;)V

    return-object v0
.end method
