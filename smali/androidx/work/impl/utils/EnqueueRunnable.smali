.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mOperation:Landroidx/work/impl/OperationImpl;

.field public final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 3
    new-instance p1, Landroidx/work/impl/OperationImpl;

    invoke-direct {p1}, Landroidx/work/impl/OperationImpl;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-void
.end method

.method public static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workContinuation"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/WorkContinuationImpl;

    .line 3
    iget-boolean v6, v5, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    if-nez v6, :cond_0

    .line 4
    invoke-static {v5}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    .line 6
    iget-object v5, v5, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    const-string v9, ", "

    .line 7
    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "Already enqueued work ids (%s)."

    .line 8
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v5, v8}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 9
    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v1

    .line 10
    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 11
    iget-object v6, v0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    new-array v7, v2, [Ljava/lang/String;

    .line 12
    invoke-interface {v1, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13
    iget-object v7, v0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

    .line 15
    sget-object v9, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    sget-object v10, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    sget-object v11, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    sget-object v12, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    sget-object v13, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 17
    iget-object v2, v5, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    .line 18
    array-length v3, v1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    move/from16 v16, v4

    .line 19
    array-length v4, v1

    const/4 v0, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    :goto_2
    if-ge v0, v4, :cond_8

    move/from16 v20, v4

    aget-object v4, v1, v0

    .line 20
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v21

    move-wide/from16 v22, v14

    move-object/from16 v14, v21

    check-cast v14, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v14, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v14

    if-nez v14, :cond_4

    .line 21
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v3, v2

    const-string v4, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 22
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v1, v3, v4}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 24
    :cond_4
    iget-object v4, v14, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v4, v11, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    and-int v19, v19, v14

    if-ne v4, v13, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    if-ne v4, v12, :cond_7

    const/16 v17, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v20

    move-wide/from16 v14, v22

    goto :goto_2

    :cond_8
    move-wide/from16 v22, v14

    goto :goto_5

    :cond_9
    move/from16 v16, v4

    move-wide/from16 v22, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 25
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    if-eqz v0, :cond_a

    if-nez v3, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_1c

    .line 26
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v4, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 27
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1c

    .line 28
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-eq v8, v14, :cond_10

    if-ne v8, v10, :cond_b

    goto :goto_a

    .line 29
    :cond_b
    sget-object v10, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v8, v10, :cond_e

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 31
    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-eq v10, v9, :cond_d

    sget-object v11, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_c

    :cond_d
    :goto_7
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    goto/16 :goto_17

    .line 32
    :cond_e
    new-instance v8, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    const/4 v10, 0x0

    invoke-direct {v8, v5, v7, v10}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v8}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 34
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v5

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 36
    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object v10, v5

    check-cast v10, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v10, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move/from16 v24, v0

    const/4 v0, 0x1

    const/4 v15, 0x0

    goto/16 :goto_12

    .line 37
    :cond_10
    :goto_a
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v3

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 40
    iget-object v15, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object/from16 v20, v4

    move-object v4, v3

    check-cast v4, Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v3

    const-string v3, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move/from16 v24, v0

    const/4 v0, 0x1

    .line 41
    invoke-static {v3, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v15, :cond_11

    .line 42
    invoke-virtual {v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_c

    .line 43
    :cond_11
    invoke-virtual {v3, v0, v15}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 44
    :goto_c
    iget-object v0, v4, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 45
    iget-object v0, v4, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-static {v0, v3, v15, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 46
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_d

    :cond_12
    move v0, v15

    .line 48
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    if-nez v0, :cond_16

    .line 50
    iget-object v0, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-ne v0, v11, :cond_13

    const/4 v3, 0x1

    goto :goto_e

    :cond_13
    move v3, v15

    :goto_e
    and-int v3, v19, v3

    if-ne v0, v13, :cond_14

    const/16 v18, 0x1

    goto :goto_f

    :cond_14
    if-ne v0, v12, :cond_15

    const/16 v17, 0x1

    .line 51
    :cond_15
    :goto_f
    iget-object v0, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v3

    :cond_16
    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v0, v24

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 52
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 53
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 54
    throw v0

    :cond_17
    move/from16 v24, v0

    const/4 v15, 0x0

    if-ne v8, v10, :cond_1a

    if-nez v17, :cond_18

    if-eqz v18, :cond_1a

    .line 55
    :cond_18
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 56
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v0, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 58
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_10

    .line 59
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move/from16 v17, v15

    move/from16 v18, v17

    .line 60
    :cond_1a
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 61
    array-length v0, v1

    if-lez v0, :cond_1b

    const/4 v3, 0x1

    goto :goto_11

    :cond_1b
    move v3, v15

    goto :goto_11

    :cond_1c
    move/from16 v24, v0

    const/4 v15, 0x0

    :goto_11
    move v0, v15

    .line 62
    :goto_12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/WorkRequest;

    .line 63
    iget-object v6, v5, Landroidx/work/WorkRequest;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    if-eqz v3, :cond_20

    if-nez v19, :cond_20

    if-eqz v18, :cond_1e

    .line 64
    iput-object v13, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    :cond_1e
    if-eqz v17, :cond_1f

    .line 65
    iput-object v12, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 66
    :cond_1f
    sget-object v8, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v8, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_14

    .line 67
    :cond_20
    invoke-virtual {v6}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v8

    if-nez v8, :cond_21

    move-wide/from16 v10, v22

    .line 68
    iput-wide v10, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    goto :goto_14

    :cond_21
    const-wide/16 v10, 0x0

    .line 69
    iput-wide v10, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 70
    :goto_14
    iget-object v8, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v8, v9, :cond_22

    const/4 v0, 0x1

    .line 71
    :cond_22
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    check-cast v8, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 72
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 73
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 74
    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 75
    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 76
    :try_start_1
    iget-object v10, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v10, v6}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 77
    iget-object v6, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 78
    iget-object v6, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 79
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v3, :cond_23

    .line 80
    array-length v6, v1

    move v8, v15

    :goto_15
    if-ge v8, v6, :cond_23

    aget-object v10, v1, v8

    .line 81
    new-instance v11, Landroidx/work/impl/model/Dependency;

    invoke-virtual {v5}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14, v10}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v10

    check-cast v10, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 83
    iget-object v14, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 84
    iget-object v14, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 85
    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 86
    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 87
    :try_start_2
    iget-object v14, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v14, v11}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 88
    iget-object v11, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v11}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    iget-object v10, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 90
    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :catchall_1
    move-exception v0

    .line 91
    iget-object v1, v10, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 92
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 93
    throw v0

    .line 94
    :cond_23
    iget-object v6, v5, Landroidx/work/WorkRequest;->mTags:Ljava/util/Set;

    .line 95
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 96
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v10

    new-instance v11, Landroidx/work/impl/model/WorkTag;

    invoke-virtual {v5}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v8, v14}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v10, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 97
    iget-object v8, v10, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 98
    iget-object v8, v10, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 99
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 100
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 101
    :try_start_3
    iget-object v8, v10, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertionAdapterOfWorkTag:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v8, v11}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 102
    iget-object v8, v10, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    iget-object v8, v10, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 104
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_16

    :catchall_2
    move-exception v0

    .line 105
    iget-object v1, v10, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 106
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 107
    throw v0

    :cond_24
    if-eqz v24, :cond_1d

    .line 108
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v6

    new-instance v8, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v5}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v7, v5}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 109
    iget-object v5, v6, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 110
    iget-object v5, v6, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 111
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 112
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 113
    :try_start_4
    iget-object v5, v6, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertionAdapterOfWorkName:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v5, v8}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 114
    iget-object v5, v6, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 115
    iget-object v5, v6, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 116
    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    .line 117
    iget-object v1, v6, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 118
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 119
    throw v0

    :catchall_4
    move-exception v0

    .line 120
    iget-object v1, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 121
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 122
    throw v0

    :cond_25
    const/4 v1, 0x1

    move v2, v0

    goto/16 :goto_8

    .line 123
    :goto_17
    iput-boolean v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    or-int v0, v16, v2

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 4
    iget-object v0, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 5
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 7
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v2}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v2

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v2, :cond_0

    .line 11
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 12
    iget-object v0, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 13
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    .line 14
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 15
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 16
    iget-object v0, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 17
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 18
    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 19
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 20
    invoke-static {v1, v2, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    sget-object v1, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, v1}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 23
    throw v1

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    aput-object v4, v1, v3

    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 26
    iget-object p0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    new-instance v1, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v1, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    :goto_0
    return-void
.end method
