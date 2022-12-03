.class public Lcom/airbnb/lottie/model/MutablePair;
.super Ljava/lang/Object;
.source "MutablePair.java"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1
    :pswitch_0
    instance-of v0, p1, Landroidx/core/util/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    check-cast p1, Landroidx/core/util/Pair;

    .line 3
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 5
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    if-eq p1, p0, :cond_4

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v3

    :goto_3
    if-eqz p0, :cond_5

    move v1, v3

    :cond_5
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pair{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v0, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "session_id"

    .line 1
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_5

    :cond_0
    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzde;->zzf:Ljava/util/Map;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "chunk_intents"

    const-string/jumbo v6, "status"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/zzde;->zzq(I)Lcom/google/android/play/core/assetpacks/zzdb;

    move-result-object v3

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    .line 5
    invoke-static {v6, v9}, Lkotlinx/coroutines/JobKt__FutureKt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v9, v6}, Landroidx/core/util/Preconditions;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzde;->zza:Lcom/google/gson/FieldAttributes;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    const-string v4, "Found stale update for session %s with status %d."

    .line 8
    invoke-virtual {v0, v4, v5}, Lcom/google/gson/FieldAttributes;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzde;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 9
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {v0, v2, v3}, Lcom/google/android/play/core/assetpacks/zzy;->zzh(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    .line 10
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzde;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 11
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {v0, v2}, Lcom/google/android/play/core/assetpacks/zzy;->zzi(I)V

    goto/16 :goto_4

    :cond_2
    const/4 v2, 0x6

    if-ne v0, v2, :cond_e

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzde;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 12
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    new-array v1, v7, [Ljava/lang/String;

    aput-object v3, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/zzy;->zze(Ljava/util/List;)V

    goto/16 :goto_4

    :cond_3
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iput v6, v4, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v6}, Landroidx/core/util/Preconditions;->zzd(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzcr;

    invoke-direct {v0, v1, v2, v8}, Lcom/google/android/play/core/assetpacks/zzcr;-><init>(Lcom/google/android/play/core/assetpacks/zzde;II)V

    invoke-virtual {v1, v0}, Lcom/google/android/play/core/assetpacks/zzde;->zzr(Lcom/google/android/play/core/assetpacks/zzdd;)Ljava/lang/Object;

    .line 14
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzde;->zzd:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzco;->zzc(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v1, v1, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzdc;

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    .line 17
    iget-object v6, v2, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    .line 18
    invoke-static {v5, v4, v6}, Lkotlinx/coroutines/JobKt__FutureKt;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    move v6, v8

    .line 20
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_5

    .line 21
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 22
    iget-object v9, v2, Lcom/google/android/play/core/assetpacks/zzdc;->zzd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/play/core/assetpacks/zzcz;

    iput-boolean v7, v9, Lcom/google/android/play/core/assetpacks/zzcz;->zza:Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 23
    :cond_7
    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/zzde;->zzs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "pack_version"

    .line 24
    invoke-static {v3, v10}, Lkotlinx/coroutines/JobKt__FutureKt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v3, "pack_version_tag"

    .line 26
    invoke-static {v3, v10}, Lkotlinx/coroutines/JobKt__FutureKt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 28
    invoke-static {v6, v10}, Lkotlinx/coroutines/JobKt__FutureKt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v3, "total_bytes_to_download"

    .line 30
    invoke-static {v3, v10}, Lkotlinx/coroutines/JobKt__FutureKt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string/jumbo v3, "slice_ids"

    .line 32
    invoke-static {v3, v10}, Lkotlinx/coroutines/JobKt__FutureKt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_8

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 36
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 37
    invoke-static {v5, v10, v6}, Lkotlinx/coroutines/JobKt__FutureKt;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v7, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v9, :cond_9

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 41
    :cond_9
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    move-object/from16 v26, v3

    if-eqz v16, :cond_a

    const/4 v8, 0x1

    :cond_a
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzcz;

    .line 42
    invoke-direct {v3, v8}, Lcom/google/android/play/core/assetpacks/zzcz;-><init>(Z)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v26

    const/4 v8, 0x0

    goto :goto_2

    :cond_b
    move-object/from16 v26, v3

    const-string/jumbo v3, "uncompressed_hash_sha256"

    .line 43
    invoke-static {v3, v10, v6}, Lkotlinx/coroutines/JobKt__FutureKt;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v3, "uncompressed_size"

    .line 45
    invoke-static {v3, v10, v6}, Lkotlinx/coroutines/JobKt__FutureKt;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    const-string v3, "patch_format"

    .line 47
    invoke-static {v3, v10, v6}, Lkotlinx/coroutines/JobKt__FutureKt;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 48
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_c

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzdc;

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v23, v7

    .line 49
    invoke-direct/range {v18 .. v25}, Lcom/google/android/play/core/assetpacks/zzdc;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v8, 0x0

    goto :goto_3

    :cond_c
    const-string v3, "compression_format"

    .line 50
    invoke-static {v3, v10, v6}, Lkotlinx/coroutines/JobKt__FutureKt;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 51
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzdc;

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v23, v7

    .line 52
    invoke-direct/range {v18 .. v25}, Lcom/google/android/play/core/assetpacks/zzdc;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    .line 53
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v26

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 54
    :cond_d
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzda;

    move-object v9, v3

    move-object/from16 v16, v4

    .line 55
    invoke-direct/range {v9 .. v17}, Lcom/google/android/play/core/assetpacks/zzda;-><init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/zzdb;

    const-string v5, "app_version_code"

    .line 56
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v2, v0, v3}, Lcom/google/android/play/core/assetpacks/zzdb;-><init>(IILcom/google/android/play/core/assetpacks/zzda;)V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzde;->zzf:Ljava/util/Map;

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_e
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    return-object v0
.end method
