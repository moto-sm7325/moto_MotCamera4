.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->scheduleUnfinishedJobRequest(Ljava/lang/Integer;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrScheduler$scheduleUnfinishedJobRequest$db$1"
    f = "JobMgrScheduler.kt"
    l = {
        0x23f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $delayMs:J

.field public final synthetic $jobList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(JLcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;-><init>(JLcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;-><init>(JLcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$delayMs:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 6
    iget-wide v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->STARTUP_SCHEDULE_DB_DELAY_MS:J

    .line 7
    :cond_2
    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->$jobList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    if-nez v0, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    .line 11
    iget-object v3, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_2

    .line 12
    :cond_6
    iget-object v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 13
    iget-wide v5, v5, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 14
    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_7

    .line 15
    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retrySource:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    .line 16
    sget-object v5, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;->COPROC:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRetrySource;

    if-ne v3, v5, :cond_4

    .line 17
    :cond_7
    iget-object v3, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-nez v3, :cond_8

    goto :goto_3

    .line 18
    :cond_8
    iget-object v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    .line 19
    iget-wide v5, v5, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    .line 20
    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_getJob(J)Lcom/motorola/camera/background/service/jms/Transaction;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 21
    :cond_9
    iget-boolean v4, v3, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    :goto_3
    if-nez v4, :cond_4

    .line 22
    iget v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    .line 23
    new-instance v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleJobRequest$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;ILkotlin/coroutines/Continuation;)V

    invoke-static {v5, v4, v2, v5}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
