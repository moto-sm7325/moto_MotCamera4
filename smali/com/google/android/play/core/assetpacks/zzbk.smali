.class public final Lcom/google/android/play/core/assetpacks/zzbk;
.super Lcom/google/android/play/core/internal/zzcm;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zzc:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzcm;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/play/core/assetpacks/zzep;->zza(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Virtualized slice archive empty for %s, %s"

    .line 8
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final zza()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final zzb(JJ)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ltz v2, :cond_3

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    add-long v0, p1, p3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzbk;->zza()J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbj;

    .line 5
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/play/core/assetpacks/zzbk;->zzd(JLjava/lang/Long;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0, p3, p4}, Lcom/google/android/play/core/assetpacks/zzbj;-><init>(Ljava/io/InputStream;J)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/play/core/assetpacks/zzbk;->zzd(JLjava/lang/Long;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    .line 8
    invoke-interface {v3, v2, v5, v0, v5}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzdr;

    .line 11
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/play/core/assetpacks/zzdr;-><init>(Ljava/util/Enumeration;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzbj;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    .line 13
    invoke-interface {p0, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr p3, v4

    invoke-direct {v2, v3, p3, p4}, Lcom/google/android/play/core/assetpacks/zzbj;-><init>(Ljava/io/InputStream;J)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p0, Ljava/io/SequenceInputStream;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p0

    .line 16
    :cond_2
    new-instance p1, Lcom/google/android/play/core/assetpacks/zzck;

    new-array p2, v4, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzbk;->zza()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s"

    .line 18
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Invalid input parameters %s, %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzd(JLjava/lang/Long;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbk;->zzc:Ljava/util/NavigableMap;

    invoke-interface {p0, p3}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr p1, v3

    cmp-long p0, v1, p1

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const-string p2, "Virtualized slice archive corrupt, could not skip in file with key %s"

    .line 3
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p0
.end method
