.class public Landroidx/core/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public static final cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, p1}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    .line 2
    :cond_2
    :goto_0
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static checkArgumentNonnegative(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(II)Z
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v2, 0x6

    if-ne p0, v2, :cond_4

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    move p0, v2

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    const/4 v0, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne p0, v0, :cond_8

    if-eq p1, v3, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_7

    goto :goto_3

    :cond_7
    return v1

    :cond_8
    :goto_3
    if-ne p0, v3, :cond_a

    if-eq p1, v1, :cond_9

    if-ne p1, v2, :cond_a

    :cond_9
    return v1

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zzd(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
