.class public Lcom/motorola/camera/ui/widgets/gl/BatchDraw;
.super Ljava/lang/Object;
.source "BatchDraw.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field public mDrawList:Ljava/lang/Object;

.field public mFilteredBatch:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportContext;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "_id"

    const-string/jumbo v3, "transport_name"

    const-string/jumbo v4, "timestamp_ms"

    const-string/jumbo v5, "uptime_ms"

    const-string v6, "payload_encoding"

    const-string v7, "payload"

    const-string v8, "code"

    const-string v9, "inline"

    .line 4
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getLoadBatchSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "events"

    const-string v4, "context_id = ?"

    move-object v1, p1

    .line 7
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzec;

    invoke-direct {v2, v0, v10, p0}, Lcom/google/android/play/core/assetpacks/zzec;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;)V

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 10
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 13
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_1

    const/16 v1, 0x2c

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x29

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "event_id"

    const-string v2, "name"

    const-string/jumbo v3, "value"

    .line 17
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "event_metadata"

    move-object v1, p1

    .line 19
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 20
    new-instance v0, Landroidx/lifecycle/MethodCallsLogger;

    invoke-direct {v0, p0}, Landroidx/lifecycle/MethodCallsLogger;-><init>(Ljava/util/Map;)V

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v10}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 23
    :goto_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getEvent()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;

    .line 28
    iget-object v4, v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;->key:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;->value:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    goto :goto_3

    .line 29
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v1

    .line 30
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 31
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-object v10
.end method

.method public declared-synchronized batchDraw([F[F)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3
    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_1

    .line 4
    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPreDraw()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v7, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_5

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v4, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length p2, p2

    if-ge v2, p2, :cond_4

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 p2, 0x0

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPostDraw(Lcom/motorola/camera/ui/widgets/gl/Shader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 11
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearDrawList()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move v1, v0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDrawList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDrawList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    .line 2
    array-length p1, p1

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzcs;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzeg;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/assetpacks/zzeg;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;)V

    return-object v1
.end method
