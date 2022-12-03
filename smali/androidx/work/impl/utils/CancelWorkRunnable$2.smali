.class public Landroidx/work/impl/utils/CancelWorkRunnable$2;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# instance fields
.field public final synthetic val$tag:Ljava/lang/String;

.field public final synthetic val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$workManagerImpl",
            "val$tag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public runInternal()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 2
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 4
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 6
    iget-object v2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$tag:Ljava/lang/String;

    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v3, v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 11
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/CancelWorkRunnable;->reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V

    return-void

    :catchall_0
    move-exception p0

    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 13
    throw p0
.end method
