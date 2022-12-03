.class public final Lkotlinx/coroutines/flow/internal/SafeCollector;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SafeCollector.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
.end annotation


# instance fields
.field public final collectContext:Lkotlin/coroutines/CoroutineContext;

.field public final collectContextSize:I

.field public final collector:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "TT;>;"
        }
    .end annotation
.end field

.field public completion:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public lastEmissionContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/NoOpContinuation;->INSTANCE:Lkotlinx/coroutines/flow/internal/NoOpContinuation;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collector:Lkotlinx/coroutines/flow/FlowCollector;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/flow/internal/SafeCollector$collectContextSize$1;->INSTANCE:Lkotlinx/coroutines/flow/internal/SafeCollector$collectContextSize$1;

    invoke-interface {p2, p1, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContextSize:I

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/internal/SafeCollector;->emit(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    .line 3
    new-instance p2, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 4
    throw p1
.end method

.method public final emit(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 5
    invoke-interface/range {p1 .. p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 7
    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    if-eq v3, v2, :cond_14

    .line 8
    instance-of v4, v3, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;

    const/4 v5, 0x0

    if-eqz v4, :cond_12

    .line 9
    check-cast v3, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;

    const-string v0, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    .line 10
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    iget-object v2, v3, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;->e:Ljava/lang/Throwable;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but then emission attempt of value \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<this>"

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "newIndent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 18
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Ljava/lang/String;

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v5

    :goto_2
    const/4 v10, -0x1

    if-ge v9, v8, :cond_3

    add-int/lit8 v11, v9, 0x1

    .line 23
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 24
    invoke-static {v12}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    move-result v12

    xor-int/2addr v12, v7

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    move v9, v11

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_3
    if-ne v9, v10, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 25
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_5
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_6

    move-object v4, v6

    goto :goto_5

    .line 29
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 30
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    .line 32
    invoke-interface {v4, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_7

    move-object v4, v8

    goto :goto_4

    .line 33
    :cond_8
    :goto_5
    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_9

    move v3, v5

    goto :goto_6

    .line 34
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 36
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v9, v5

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_10

    .line 39
    check-cast v10, Ljava/lang/String;

    if-eqz v9, :cond_a

    if-ne v9, v0, :cond_b

    .line 40
    :cond_a
    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v9, v6

    goto :goto_a

    .line 41
    :cond_b
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_c

    move v9, v7

    goto :goto_8

    :cond_c
    move v9, v5

    :goto_8
    if-eqz v9, :cond_f

    .line 42
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-le v3, v9, :cond_d

    goto :goto_9

    :cond_d
    move v9, v3

    :goto_9
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "line"

    .line 43
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    if-nez v9, :cond_e

    goto :goto_b

    .line 44
    :cond_e
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move v9, v11

    goto :goto_7

    :cond_f
    const-string v0, "Requested character count "

    const-string v1, " is less than zero."

    .line 45
    invoke-static {v0, v3, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    .line 47
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7c

    const-string v10, "\n"

    move-object v9, v0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$checkContext$result$1;

    invoke-direct {v4, v0}, Lkotlinx/coroutines/flow/internal/SafeCollector_commonKt$checkContext$result$1;-><init>(Lkotlinx/coroutines/flow/internal/SafeCollector;)V

    invoke-interface {v2, v3, v4}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 51
    iget v4, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContextSize:I

    if-ne v3, v4, :cond_13

    .line 52
    iput-object v2, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    goto :goto_c

    :cond_13
    const-string v1, "Flow invariant is violated:\n\t\tFlow was collected in "

    .line 53
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n\t\tbut emission happened in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_c
    move-object/from16 v2, p1

    .line 57
    iput-object v2, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:Lkotlin/coroutines/Continuation;

    .line 58
    sget-object v2, Lkotlinx/coroutines/flow/internal/SafeCollectorKt;->emitFun:Lkotlin/jvm/functions/Function3;

    .line 59
    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collector:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v2, v3, v1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:Lkotlin/coroutines/Continuation;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:Lkotlin/coroutines/Continuation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_1
    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->lastEmissionContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->completion:Lkotlin/coroutines/Continuation;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3
    :goto_0
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public releaseIntercepted()V
    .locals 0

    .line 1
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    return-void
.end method
