.class public Lcom/google/android/gms/common/api/internal/zaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zaa:Ljava/lang/Object;

.field public zab:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/value/LottieValueCallback;I)V
    .locals 1

    const/4 p2, 0x2

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zaz;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzm;

    invoke-direct {v0, p2}, Lcom/google/android/play/core/assetpacks/zzm;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportContext;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    .line 1
    invoke-virtual {v0, p1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 5
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    sget-object p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$21;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$21;

    .line 6
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zaaa;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Ljava/util/Map;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putIntArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaz;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "Synchronized"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
